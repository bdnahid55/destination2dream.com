<?php

use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FaqController;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\PageController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\HomepageController;
use App\Http\Controllers\AdminAuthController;
use App\Http\Controllers\TestimonialController;
use App\Http\Controllers\WhyChooseMeController;
use App\Http\Controllers\CallToActionController;
use App\Http\Controllers\PaymentMethodController;
use App\Http\Controllers\WebsiteSettingController;



/*
 admin section route
*/

// Route for Login
Route::controller(AdminAuthController::class)->group(function () {
    Route::get('admin/login', 'index')->name('admin.login');
    Route::post('admin/login-process', 'LoginProcess')->name('adminuser.login-process');
});



// Admin Section
Route::prefix('admin')->name('admin.')->middleware('admin')->group(function () {

    // Route for admin homepage / Dashboard
    Route::controller(AdminAuthController::class)->group(function () {
        Route::get('/dashboard', 'dashboard')->name('dashboard');
        Route::get('/logout', 'logout')->name('logout');
        Route::get('/change-password', 'changePassword')->name('change-password');
        Route::post('/password-update/{id}', 'updatePassword')->name('password-update');
    });

    // Admin crud
    Route::get('/admin', [AdminController::class, 'Admin'])->name('admin');
    Route::get('/admin_data', [AdminController::class, 'AdminData'])->name('admin.data');
    Route::get('/admin_edit_data', [AdminController::class, 'AdminEditData'])->name('admin.edit');
    Route::post('/admin_insert', [AdminController::class, 'AdminInsert'])->name('admin.insert');

    //  Website Settings
    Route::get('website_settings', [WebsiteSettingController::class, 'WebsiteSettingsEditData'])->name('website_settings');
    Route::post('website_settings_update', [WebsiteSettingController::class, 'WebsiteSettingsUpdate'])->name('website_settings.update');

    //  Contact 
    Route::get('contact', [ContactController::class, 'ContactEditData'])->name('contact');
    Route::post('contact_update', [ContactController::class, 'ContactUpdate'])->name('contact.update');

    // Messages from client  
    Route::get('messages', [MessageController::class, 'Messages'])->name('messages');
    Route::get('messages_data', [MessageController::class, 'MessagesData'])->name('messages.data');
    Route::get('messages_edit_data', [MessageController::class, 'MessagesEditData'])->name('messages.edit');
    Route::post('messages_delete', [MessageController::class, 'messagesDelete'])->name('messages.delete');

    //  About
    Route::get('about', [AboutController::class, 'AboutEditData'])->name('about');
    Route::post('about_update', [AboutController::class, 'AboutUpdate'])->name('about.update');

    //  Why Choose Me 
    Route::get('why_choose_me', [WhyChooseMeController::class, 'WhyChooseMeEditData'])->name('why_choose_me');
    Route::post('why_choose_me_update', [WhyChooseMeController::class, 'WhyChooseMeUpdate'])->name('why_choose_me.update');

    //  Call To Action
    Route::get('call_to_action', [CallToActionController::class, 'CallToActionEditData'])->name('call_to_action');
    Route::post('call_to_action_update', [CallToActionController::class, 'CallToActionUpdate'])->name('call_to_action.update');

    // Slider crud
    Route::get('slider', [SliderController::class, 'Slider'])->name('slider');
    Route::get('slider_data', [SliderController::class, 'SliderData'])->name('slider.data');
    Route::get('slider_edit_data', [SliderController::class, 'SliderEditData'])->name('slider.edit');
    Route::post('slider_insert', [SliderController::class, 'SliderInsert'])->name('slider.insert');

    // Service  crud
    Route::get('service', [ServiceController::class, 'Service'])->name('service');
    Route::get('service_data', [ServiceController::class, 'ServiceData'])->name('service.data');
    Route::get('service_edit_data', [ServiceController::class, 'ServiceEditData'])->name('service.edit');
    Route::post('service_insert', [ServiceController::class, 'ServiceInsert'])->name('service.insert');

    // Faq  crud
    Route::get('faq', [FaqController::class, 'Faq'])->name('faq');
    Route::get('faq_data', [FaqController::class, 'FaqData'])->name('faq.data');
    Route::get('faq_edit_data', [FaqController::class, 'FaqEditData'])->name('faq.edit');
    Route::post('faq_insert', [FaqController::class, 'FaqInsert'])->name('faq.insert');

    // Testimonial crud
    Route::get('testimonial', [TestimonialController::class, 'Testimonial'])->name('testimonial');
    Route::get('testimonial_data', [TestimonialController::class, 'TestimonialData'])->name('testimonial.data');
    Route::get('testimonial_edit_data', [TestimonialController::class, 'TestimonialEditData'])->name('testimonial.edit');
    Route::post('testimonial_insert', [TestimonialController::class, 'TestimonialInsert'])->name('testimonial.insert');

    // Payment Method crud 
    Route::get('payment_method', [PaymentMethodController::class, 'PaymentMethod'])->name('payment_method');
    Route::get('payment_method_data', [PaymentMethodController::class, 'PaymentMethodData'])->name('payment_method.data');
    Route::get('payment_method_edit_data', [PaymentMethodController::class, 'PaymentMethodEditData'])->name('payment_method.edit');
    Route::post('payment_method_insert', [PaymentMethodController::class, 'PaymentMethodInsert'])->name('payment_method.insert');

    // Page  crud 
    Route::get('page', [PageController::class, 'Page'])->name('page');
    Route::get('page_data', [PageController::class, 'PageData'])->name('page.data');
    Route::get('page_edit_data', [PageController::class, 'PageEditData'])->name('page.edit');
    Route::post('page_insert', [PageController::class, 'PageInsert'])->name('page.insert');


    // End
});


//  Website frontend
Route::get('/', [HomepageController::class, 'index'])->name('home');
Route::get('/{slug}/{id}', [PageController::class, 'PageDetails'])->name('page.details');
Route::get('/service', [HomepageController::class, 'service'])->name('service');
Route::get('/service/{slug}/{id}', [ServiceController::class, 'ServiceDetails'])->name('service.details');
Route::get('/contact', [HomepageController::class, 'contact'])->name('contact');
Route::post('/message/send', [MessageController::class, 'MessageDataSend'])->name('message.send');
Route::get('/about', [HomepageController::class, 'about'])->name('about');
Route::get('/appointment', [HomepageController::class, 'appointment'])->name('appointment');
// Route::post('/appointment/book', [MessageController::class, 'AppointmentDataSend'])->name('appointment.book');

Route::get('/invoice', function () {
    return view('welcome');
    //$pdf = Pdf::loadView('front-end.index');
    // return $pdf->download('invoice.pdf');
});


Route::get('/page', function () {
    return view('front-end.page');
});






// --------------------------------------------------------------------------------
Route::get('/runs', function () {

    if (request('key') !== env('MIGRATE_SECRET_KEY')) {
        abort(403, 'Unauthorized action.');
    }

    if (app()->isProduction()) {
        abort(403, 'This endpoint cannot be run in production.');
    }

    try {
        Artisan::call('migrate');
        Artisan::call('db:seed');
        Artisan::call('optimize:clear');

        return response()->json([
            'message' => 'Migrations, seeding, and optimization completed successfully!',
        ]);
    } catch (\Exception $e) {
        return response()->json(['error' => $e->getMessage()], 500);
    }
});
// })->middleware(['admin', 'throttle:5,1']);