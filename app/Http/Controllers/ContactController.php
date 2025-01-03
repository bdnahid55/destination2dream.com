<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

class ContactController extends Controller
{

    public function ContactEditData(Contact $Contact)
    {
        $ContactData = Contact::first();
        return view('back-end.pages.contact.contact', compact('ContactData'));
    }

    // update data
    public function ContactUpdate(Request $request)
    {

        $check_valid = $request->validate([
            'address' => 'required|min:2',
            'email' => 'required|min:2',
            'support_email' => 'required|min:1',
            'phone' => 'required|min:1',
            'support_phone' => 'required|min:1',
            'details' => 'required|min:1',
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
            $query = Contact::first()->update([
                'address' => $request->address,
                'email' => $request->email,
                'support_email' => $request->support_email,
                'phone' => $request->phone,
                'support_phone' => $request->support_phone,
                'details' => $request->details,
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
