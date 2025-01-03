<?php

namespace App\Http\Controllers;

use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Carbon;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use Yajra\Datatables\Datatables;

class ServiceController extends Controller
{



    public function Service()
    {
        return view('back-end.pages.service.service');
    }

    public function ServiceEditData(Request $request)
    {
        $query = Service::find($request->id); // Model will change
        if (!$query) {
            return response()->json([
                'status' => "error",
                'message' => "Not Found, Please Try Again..."
            ], 422);
        }

        return response()->json([
            'status' => "success",
            'data' => $query,

        ]);
    }

    public function ServiceInsert(Request $request)
    {

        if ($request->has('delete')) {
            $query = Service::find($request->delete); // Model will change

            if ($query->image != null) {
                unlink(public_path('uploads/service/' . $query->image)); // image directory name will change
            }

            $query->delete();

            $message = 'Service Deleted Successfully!'; // message will change
        } else {

            $id = $request->id ?? null; // If updating, get the ID, otherwise null
            $request->validate(array(  // All column field will change
                'name' => 'required|min:2',
                'description' => 'required|min:2',
                'details' => 'required|min:3',
                'meta_title' => 'required|min:2',
                'meta_description' => 'required|min:1',
                'meta_keywords' => 'required|min:1',
                'image' => $id ? 'nullable' : 'required', // Required if creating, nullable if updating
                'status' => 'required|in:active,inactive',
            ));

            $message = 'Service Create Successfully!'; // Message will change

            if ($request->has('id')) {
                $query = Service::find($request->id);  // Model name will change

                if ($request->hasFile('image')) {
                    if ($query->image != null) {
                        unlink(public_path('uploads/service/' . $query->image)); // Directory name will change
                    }
                }

                $message = 'Service Updated Successfully!'; // Message will change

                if (!$query) {
                    return response()->json([
                        'status' => "error",
                        'message' => "Not Found, Please Try Again..."
                    ], 422);
                }
            } else {
                $query = new Service;  // Model name will change
            }

            if ($request->hasFile('image')) {
                // image code By using image intervention package
                $file               = $request->file('image');
                $manager            = new ImageManager(new Driver());
                $extension          = Str::lower($file->getClientOriginalExtension());
                $filename           = Str::uuid() . Str::random(5) . '.' . $extension;
                $img                = $manager->read($file);
                $img                = $img->resize(128, 128);
                $destinationPath    = public_path('uploads/service/');  // Directory name will change
                $img->save($destinationPath . $filename);
                $query->image       = $filename;


                // image code manually
                // $image_name        = Str::uuid() . Str::random(5);
                // $ext               = Str::lower($request->file('image')->getClientOriginalExtension());
                // $image_full_name   = $image_name.'.'.$ext;
                // $upload_path       = "uploads/service/";  // Directory name will change
                // $image_url         = $upload_path.$image_full_name;
                // $success           = $request->file('image')->move($upload_path,$image_full_name);
                // $query->image      = $image_full_name;

            }

            // All request name will be changed
            $query->name = $request->name;
            $query->slug = Str::slug($request->name);
            $query->description = $request->description;
            $query->details = $request->details;
            $query->meta_title = $request->meta_title;
            $query->meta_description = $request->meta_description;
            $query->meta_keywords = $request->meta_keywords;
            $query->status = $request->status;
            $query->save();
        }
        return response()->json([
            'status' => "success",
            'message' => $message,
        ]);
    }

    public function ServiceData(Request $request)
    {
        $Service = Service::orderBy('id', 'desc')->get(); // Model & Variable will change
        $this->i = 1;

        return DataTables::of($Service)  // Variable will change
            ->addColumn('id', function ($data) {
                return $this->i++;
            })
            ->addColumn('image', function ($data) {
                $url = asset('uploads/service/' . $data->image);   // Directory name will change
                return '<img src="' . $url . '" style="height:80px; width:80px;" alt="Image" class="mx-auto img-fluid d-block"/>';
            })
            ->addColumn('action', function ($data) {
                $htmlData = '';
                $htmlData .= '<a href="javascript:void(0)" data-id="' . $data->id . '" class="btn btn-info btn-sm tableEdit"><i class="fa fa-edit"></i></a>&nbsp;';
                $htmlData .= '<a href="javascript:void(0)" data-id="' . $data->id . '" class="btn btn-danger btn-sm tableDelete"><i class="fa fa-trash"></i></a>';
                return $htmlData;
            })
            ->rawColumns(['image', 'action'])
            ->toJson();
    }

    public function ServiceDetails($slug, $id)
    {
        $Service = Service::where('id', $id)->firstOrFail();

        // Check if the slug matches the one in the database
        if ($slug !== $Service->slug) {
            // Redirect to the correct slug if it doesn't match
            return redirect()->route('service.details', ['slug' => $Service->slug, 'id' => $id]);
        }
        return view('front-end.service_details', compact('Service'));
    }



    // End

}
