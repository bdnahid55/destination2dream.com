<?php

namespace App\Http\Controllers;

use App\Models\About;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class AboutController extends Controller
{

    public function AboutEditData(About $About)
    {
        $AboutData = About::first();
        return view('back-end.pages.about.about', compact('AboutData'));
    }

    // update data
    public function AboutUpdate(Request $request)
    {

        $check_valid = $request->validate([
            'title' => 'required|min:1',
            'image' => 'nullable|max:2048',
            'subtitle' => 'required|min:1',
            'description' => 'required|min:1',
            'extra_details' => 'required|min:1'
        ]);

        // dd($request->all());
        // die;

        // check if token is valid
        if (!$check_valid) {
            $notification = array(
                'status' => 'error',
                'message' => 'Failed !!!'
            );
            return redirect()->back()->with($notification);
        } else {

            if ($request->hasFile('image')) {
                // delete previous image
                $query = About::first();
                if ($query->image != null) {
                    unlink(public_path('uploads/about/' . $query->image)); // Directory name will change
                }

                // image code By using image intervention package
                $file               = $request->file('image');
                $manager            = new ImageManager(new Driver());
                $extension          = Str::lower($file->getClientOriginalExtension());
                $filename           = Str::uuid() . Str::random(5) . '.' . $extension;
                $img                = $manager->read($file);
                $img                = $img->resize(600, 400);
                $destinationPath    = public_path('uploads/about/');  // Directory name will change
                $img->save($destinationPath . $filename);


                // image code manually
                // $image_name        = Str::uuid() . '.' . Str::random(5);
                // $ext               = Str::lower($request->file('image')->getClientOriginalExtension());
                // $image_full_name   = $image_name.'.'.$ext;
                // $upload_path       = "uploads/about/";  // Directory name will change
                // $image_url         = $upload_path.$image_full_name;
                // $success           = $request->file('image')->move($upload_path,$image_full_name);

                // insert only image in database
                About::first()->update([
                    'image' => $filename
                ]);
            }

            // update data into database
            $query = About::first()->update([
                'title' => $request->title,
                'subtitle' => $request->subtitle,
                'description' => $request->description,
                'extra_details' => $request->extra_details,

            ]);

            // echo '<pre>';
            // var_dump($query);
            // echo '</pre>';exit();

            if ($query) {
                $notification = array(
                    'status' => 'success',
                    'message' => 'Data Update Successfully !!!'
                );
                return redirect()->back()->with($notification);
            } else {
                $notification = array(
                    'status' => 'error',
                    'message' => 'Sorry. Data Update failed !!!'
                );
                return redirect()->back()->with($notification);
            }
        }
    }

    // End

}
