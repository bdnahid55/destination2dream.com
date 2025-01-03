<?php

namespace App\Http\Controllers;

use App\Models\Faq;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Auth;
use Yajra\Datatables\Datatables;

class FaqController extends Controller
{

    public function Faq()
    {
        return view('back-end.pages.faq.faq');
    }

    public function FaqEditData(Request $request)
    {
        $query = Faq::find($request->id); // Model will change
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

    public function FaqInsert(Request $request)
    {

        if ($request->has('delete')) {
            $query = Faq::find($request->delete); // Model will change
            $query->delete();

            $message = 'Faq Deleted Successfully!'; // message will change
        } else {

            $id = $request->id ?? null; // If updating, get the ID, otherwise null
            $request->validate(array(  // All column field will change
                'question' => 'required|min:1',
                'answer' => 'required|min:1',
                'status' => 'required|in:active,inactive',
            ));

            $message = 'Faq Create Successfully!'; // Message will change

            if ($request->has('id')) {
                $query = Faq::find($request->id);  // Model name will change
                $message = 'Faq Updated Successfully!'; // Message will change

                if (!$query) {
                    return response()->json([
                        'status' => "error",
                        'message' => "Not Found, Please Try Again..."
                    ], 422);
                }
            } else {
                $query = new Faq;  // Model name will change
            }

            // All request name will be changed
            $query->question = $request->question;
            $query->answer = $request->answer;
            $query->status = $request->status;
            $query->save();
        }
        return response()->json([
            'status' => "success",
            'message' => $message,
        ]);
    }

    public function FaqData(Request $request)
    {
        $Faq = Faq::orderBy('id', 'desc')->get(); // Model & Variable will change
        $this->i = 1;

        return DataTables::of($Faq)  // Variable will change
            ->addColumn('id', function ($data) {
                return $this->i++;
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
