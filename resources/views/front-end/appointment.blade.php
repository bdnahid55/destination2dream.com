@extends('front-end.layouts.master')
@php
    $WebsiteSettingData = App\Models\WebsiteSetting::first();
@endphp
@section('title', 'Appointment' . ' | ' . $WebsiteSettingData->meta_title)
@section('description', $WebsiteSettingData->meta_description)
@section('keywords', $WebsiteSettingData->meta_keywords)

@section('content')
    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <section id="breadcrumbs" class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>Appointment </h2>
                    <ol>
                        <li><a href="{{ route('home') }}">Home</a></li>
                        <li>Appointment </li>
                    </ol>
                </div>

            </div>
        </section><!-- End Breadcrumbs -->

        <!-- ======= Appointment Section ======= -->
        <section id="team" class="team section-bg">
            <div class="container">
                <div class="row">

                    <div class="col-lg-8 offset-lg-2 col-md-12 col-12">
                        <div class="appionment-from">
                            <h2 class="mb-4 text-center">Appointment Form</h2>
                            <form action="" method="post">
                                @csrf
                                <!-- Full Name -->
                                <div class="mb-3">
                                    <label for="fullName" class="form-label">Full Name</label>
                                    <input type="text" class="form-control" id="fullName" required>
                                </div>

                                <!-- E-mail -->
                                <div class="mb-3">
                                    <label for="email" class="form-label">E-mail</label>
                                    <input type="email" class="form-control" id="email" required>
                                </div>

                                <!-- Mobile No -->
                                <div class="mb-3">
                                    <label for="mobile" class="form-label">Mobile</label>
                                    <input type="tel" class="form-control" id="mobile" required>
                                </div>

                                <!-- Date and Time (same line) -->
                                <div class="row">
                                    <!-- Date -->
                                    <div class="mb-3 col-md-6 col-12">
                                        <label for="appointmentDate" class="form-label">Choose a date</label>
                                        <input type="date" class="form-control" id="appointmentDate" required>
                                    </div>

                                    <!-- Time -->
                                    <div class="mb-3 col-md-6 col-12">
                                        <label for="appointmentTime" class="form-label">Choose Time</label>
                                        <select class="form-control" id="appointmentTime" required>
                                            <option value="09:00">9:00 AM</option>
                                            <option value="09:30">9:30 AM</option>
                                            <option value="10:00">10:00 AM</option>
                                            <option value="10:30">10:30 AM</option>
                                            <option value="11:00">11:00 AM</option>
                                            <option value="11:30">11:30 AM</option>
                                            <option value="12:00">12:00 PM</option>
                                            <option value="12:30">12:30 PM</option>
                                        </select>
                                    </div>
                                </div>

                                <!-- Message -->
                                <div class="mb-3">
                                    <label for="message" class="form-label">Message</label>
                                    <textarea class="form-control" id="message" rows="4" required></textarea>
                                </div>

                                <!-- Submit Button -->
                                <div class="text-center">
                                    <button type="submit" class="btn btn-success">Book an Appointment</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </section><!-- End Apportionment Section -->


    </main><!-- End #main -->
@endsection

{{-- push custom js before end of body tag --}}
@push('scripts')
@endpush
