<?php

namespace App\Http\Controllers;

use App\Models\Faq;
use App\Models\About;
use App\Models\Slider;
use App\Models\Contact;
use App\Models\Service;
use App\Models\Portfolio;
use App\Models\Testimonial;
use App\Models\WhyChooseMe;
use App\Models\CallToAction;
use Illuminate\Http\Request;
use App\Models\PaymentMethod;
use App\Models\WebsiteSetting;
use App\Http\Controllers\Controller;

class HomepageController extends Controller
{

    public function index()
    {

        $AllSlider = Slider::where('status', 'active')
            ->orderBy('id', 'ASC')
            ->get();

        $ServiceData = Service::where('status', 'active')
            ->orderBy('id', 'ASC')
            ->get();

        $PaymentMethod = PaymentMethod::where('status', 'active')
            ->orderBy('id', 'ASC')
            ->get();

        $TestimonialData = Testimonial::where('status', 'active')
            ->orderBy('id', 'ASC')
            ->get();

        $WhyChooseMeData = WhyChooseMe::first();

        $CallToActionData = CallToAction::first();

        $AboutData = About::first();

        $SeoData = WebsiteSetting::first();
        return view('front-end.index', compact('SeoData', 'AllSlider', 'AboutData', 'ServiceData', 'TestimonialData', 'PaymentMethod', 'WhyChooseMeData', 'CallToActionData'));
    }


    public function service()
    {
        $ServiceData = Service::where('status', 'active')
            ->orderBy('id', 'ASC')
            ->get();

        $FaqData = Faq::where('status', 'active')
            ->orderBy('id', 'ASC')
            ->get();

        $PaymentMethod = PaymentMethod::where('status', 'active')
            ->orderBy('id', 'ASC')
            ->get();

        return view('front-end.services', compact('ServiceData', 'FaqData', 'PaymentMethod'));
    }

    public function contact()
    {
        $ContactData = Contact::first();
        return view('front-end.contact', compact('ContactData'));
    }

    public function about()
    {
        $AboutData = About::first();
        return view('front-end.about', compact('AboutData'));
    }

    public function portfolio()
    {
        $PortfolioData = Portfolio::first();
        return view('front-end.portfolio', compact('PortfolioData'));
    }
    public function appointment()
    {
        return view('front-end.appointment');
    }



    // End

}
