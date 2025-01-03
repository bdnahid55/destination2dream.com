@extends('front-end.layouts.master')
@section('content')
    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <section id="breadcrumbs" class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>{{ $PageData->title }}</h2>
                    <ol>
                        <li><a href="{{ route('home') }}">Home</a></li>
                        <li>{{ $PageData->title }}</li>
                    </ol>
                </div>

            </div>
        </section><!-- End Breadcrumbs -->

        <!-- ======= Our Team Section ======= -->
        <section id="team" class="team section-bg">
            <div class="container mt-5">
                <div class="row">

                    <div class="col-lg-12 col-md-12 col-12">
                        <p>{!! $PageData->content !!}</p>
                    </div>
                </div>
            </div>

        </section><!-- End Our Team Section -->

    </main><!-- End #main -->
@endsection

{{-- push custom js before end of body tag --}}
@push('scripts')
@endpush
