<?php

namespace App\Http\Controllers;

use App\Models\CallToAction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class CallToActionController extends Controller
{

    public function CallToActionEditData(CallToAction $CallToAction)
    {
        $CallToActionData = CallToAction::first();
        return view('back-end.pages.call-to-action.call-to-action', compact('CallToActionData'));
    }

    // update data
    public function CallToActionUpdate(Request $request)
    {

        $check_valid = $request->validate([
            'headline' => 'required|min:2',
            'button_text' => 'required|min:2',
            'link' => 'required|min:1'
        ]);

        // check if token is valid
        if (!$check_valid) {
            $notification = array(
                'status' => 'error',
                'message' => 'Failed !!!'
            );
            return redirect()->back()->with($notification);
        } else {

            // update data into database
            $query = CallToAction::first()->update([
                'headline' => $request->headline,
                'button_text' => $request->button_text,
                'link' => $request->link,
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
