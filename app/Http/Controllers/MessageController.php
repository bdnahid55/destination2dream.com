<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Yajra\Datatables\Datatables;

class MessageController extends Controller
{

    // Message Data Send
    public function MessageDataSend(Request $request)
    {

        $check_valid = $request->validate([
            'name' => 'required|min:2|max:80',
            'email' => 'required|min:2|max:80',
            'phone' => 'required|min:1|max:14',
            'message' => 'required|min:1|max:254',
        ]);

        // check if token is valid
        if (!$check_valid) {
            session()->flash('error', 'failed !!!');
            return redirect()->route('contact');
        } else {

            // insert data into database
            $query = new Message;


            // echo '<pre>';
            // var_dump($query);
            // echo '</pre>';exit();

            // All request name will be changed
            $query->name = $request->name;
            $query->email = $request->email;
            $query->phone = $request->phone;
            $query->message = $request->message;
            $query->save();

            if ($query) {
                session()->flash('success', 'Message sent Successfully !!!');
            } else {
                session()->flash('error', 'Sorry. Message sent failed !!!');
            }
            return redirect()->route('contact');
        }
    }


    // show all message in admin page
    public function Messages()
    {
        return view('back-end.pages.messages.messages');
    }

    public function MessagesEditData(Request $request)
    {
        $query = Message::find($request->id); // Model will change
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

    public function messagesDelete(Request $request)
    {

        if ($request->has('delete')) {
            $query = Message::find($request->delete);  // Model will change
            $query->delete();

            $message = 'Message Deleted Successfully!';    // message will change
            return response()->json([
                'status' => "success",
                'message' => $message,
            ]);
        } else {

            $message = 'Message Delete Failed!';    // message will change
            return response()->json([
                'status' => "error",
                'message' => $message,
            ]);
        }
    }


    public function MessagesData(Request $request)
    {
        $Message = Message::orderBy('id', 'desc')->get(); // Model & Variable will change
        $this->i = 1;

        return DataTables::of($Message)  // Variable will change
            ->addColumn('id', function ($data) {
                return $this->i++;
            })

            ->addColumn('action', function ($data) {
                $htmlData = '';
                $htmlData .= '<a href="javascript:void(0)" data-id="' . $data->id . '" class="btn btn-info btn-sm tableEdit"><i class="fa fa-eye"></i></a>&nbsp;';
                $htmlData .= '<a href="javascript:void(0)" data-id="' . $data->id . '" class="btn btn-danger btn-sm tableDelete"><i class="fa fa-trash"></i></a>';
                return $htmlData;
            })
            ->rawColumns(['image', 'action'])
            ->toJson();
    }

    // End
}
