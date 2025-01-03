<?php

namespace App\Http\Controllers;

use App\Models\WhyChooseMe;
use Illuminate\Http\Request;

class WhyChooseMeController extends Controller
{

    public function WhyChooseUsEditData(WhyChooseMe $WhyChooseMe)
    {
        $WhyChooseMeData = WhyChooseMe::first();
        return view('back-end.pages.why_choose_us.why_choose_us', compact('WhyChooseMeData'));
    }

    // update data
    public function WhyChooseUsUpdate(Request $request)
    {

        $check_valid = $request->validate([
            'title' => 'required|min:2',
            'short_description' => 'required|min:2',
            'details' => 'required|min:1'
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
            $query = WhyChooseMe::first()->update([
                'title' => $request->title,
                'short_description' => $request->short_description,
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
