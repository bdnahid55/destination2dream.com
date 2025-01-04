@extends('front-end.layouts.master')
@php
    $WebsiteSettingData = App\Models\WebsiteSetting::first();
@endphp
@section('title', $Service->meta_title . ' | ' . $WebsiteSettingData->meta_title)
@section('description', $Service->meta_description)
@section('keywords', $Service->meta_keywords)

@section('content')
    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <section id="breadcrumbs" class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>
                        {{-- {{ $Service->name }} --}}
                    </h2>
                    <ol>
                        <li><a href="{{ route('home') }}">Home</a></li>
                        <li><a href="{{ route('service') }}">Service</a></li>
                        <li>{{ $Service->name }}</li>
                    </ol>
                </div>

            </div>
        </section><!-- End Breadcrumbs -->

        <!-- ======= Our Team Section ======= -->
        <section id="team" class="team section-bg">
            <div class="container mt-5">
                <div class="row">

                    <div class="col-lg-12 col-md-12 col-12">
                        <div class="section-title">
                            <h2>{{ $Service->name }}</h2>
                        </div>
                    </div>

                    <div class="col-lg-12 col-md-12 col-12">
                        {!! $Service->details !!}
                    </div>
                </div>
            </div>

        </section><!-- End Our Team Section -->

    </main><!-- End #main -->
@endsection

{{-- push custom js before end of body tag --}}
@push('scripts')
@endpush
