@extends('front-end.layouts.master')

{{-- @section('title', $metadata->title ?? 'About Us')
@section('description', $metadata->description ?? 'Default Description')
@section('keywords', $metadata->keywords ?? 'Default Keywords') --}}

@section('content')
    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <section id="breadcrumbs" class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>About</h2>
                    <ol>
                        <li><a href="{{ route('home') }}">Home</a></li>
                        <li>About</li>
                    </ol>
                </div>

            </div>
        </section><!-- End Breadcrumbs -->

        <!-- ======= About Me Section ======= -->
        <section id="about-us" class="about-us">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>About US</h2>
                </div>

                <div class="row content">
                    <div class="col-lg-6 center-section" data-aos="fade-right">

                        <div class="center-line">
                            <h2>{{ $AboutData->title }}</h2>
                            <h3>{{ $AboutData->subtitle }}</h3>
                            <p class="text-justify">
                                {{ $AboutData->description }}
                            </p>
                        </div>

                    </div>
                    <div class="pt-4 col-lg-6 pt-lg-0" data-aos="fade-left">

                        <img class="text-center img-fluid" src="/uploads/about/{{ $AboutData->image }}"
                            alt="{{ $AboutData->title }}">

                    </div>
                </div>

                <div class="row content">
                    <div class="mt-4 col-lg-12" data-aos="fade-right">
                        <div>
                            {!! $AboutData->extra_details !!}
                        </div>
                    </div>
                </div>

            </div>
        </section><!-- End About Me Section -->

        <style>
            .center-section {
                margin: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: auto;
            }

            .center-line {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                text-align: justify;
            }
        </style>

    </main><!-- End #main -->
@endsection

{{-- push custom js before end of body tag --}}
@push('scripts')
@endpush
