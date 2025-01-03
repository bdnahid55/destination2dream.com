<?php

namespace App\Http\Controllers;

use App\Models\OurTeam;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Carbon;
use Yajra\Datatables\Datatables;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Intervention\Image\ImageManager;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Drivers\Gd\Driver;

class OurTeamController extends Controller
{


    public function OurTeam()
    {
        return view('back-end.pages.our_team.our_team');
    }

    public function OurTeamEditData(Request $request)
    {
        $query = OurTeam::find($request->id); // Model will change
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

    public function OurTeamInsert(Request $request)
    {

        if ($request->has('delete')) {
            $query = OurTeam::find($request->delete); // Model will change

            if ($query->image != null) {
                unlink(public_path('uploads/our_team/' . $query->image)); // image directory name will change
            }

            $query->delete();

            $message = 'Our Team Deleted Successfully!'; // message will change
        } else {

            $id = $request->id ?? null; // If updating, get the ID, otherwise null
            $request->validate(array(  // All column field will change
                'name' => 'required|min:2',
                'designation' => 'required|min:1',
                // 'image' => $id ? 'nullable' : 'required', // Required if creating, nullable if updating
                'status' => 'required|in:active,inactive',
            ));

            $message = 'Our Team Create Successfully!'; // Message will change

            if ($request->has('id')) {
                $query = OurTeam::find($request->id);  // Model name will change

                if ($request->hasFile('image')) {
                    if ($query->image != null) {
                        unlink(public_path('uploads/our_team/' . $query->image)); // Directory name will change
                    }
                }

                $message = 'Our Team Updated Successfully!'; // Message will change

                if (!$query) {
                    return response()->json([
                        'status' => "error",
                        'message' => "Not Found, Please Try Again..."
                    ], 422);
                }
            } else {
                $query = new OurTeam;  // Model name will change
            }

            if ($request->hasFile('image')) {
                // image code By using image intervention package
                $file               = $request->file('image');
                $manager            = new ImageManager(new Driver());
                $extension          = Str::lower($file->getClientOriginalExtension());
                $filename           = Str::uuid() . Str::random(5) . '.' . $extension;
                $img                = $manager->read($file);
                $img                = $img->resize(128, 128);
                $destinationPath    = public_path('uploads/our_team/');  // Directory name will change
                $img->save($destinationPath . $filename);
                $query->image       = $filename;


                // image code manually
                // $image_name        = Str::uuid() . Str::random(5);
                // $ext               = Str::lower($request->file('image')->getClientOriginalExtension());
                // $image_full_name   = $image_name.'.'.$ext;
                // $upload_path       = "uploads/our_team/";  // Directory name will change
                // $image_url         = $upload_path.$image_full_name;
                // $success           = $request->file('image')->move($upload_path,$image_full_name);
                // $query->image      = $image_full_name;

            }

            // All request name will be changed
            $query->name = $request->name;
            $query->designation = $request->designation;
            $query->status = $request->status;
            $query->save();
        }
        return response()->json([
            'status' => "success",
            'message' => $message,
        ]);
    }

    public function OurTeamData(Request $request)
    {
        $OurTeam = OurTeam::orderBy('id', 'desc')->get(); // Model & Variable will change

        $this->i = 1;

        return DataTables::of($OurTeam)  // Variable will change
            ->addColumn('id', function ($data) {
                return $this->i++;
            })
            ->addColumn('image', function ($data) {
                $url = asset('uploads/our_team/' . $data->image);   // Directory name will change
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

    // End


}
