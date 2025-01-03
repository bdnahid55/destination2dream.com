@extends('front-end.layouts.master')

@section('title', $SeoData->meta_title ?? 'Default Title')
@section('description', $SeoData->meta_description ?? 'Default Description')
@section('keywords', $SeoData->meta_keywords ?? 'Default Keywords')

@section('content')
    <!-- ======= Hero Section ======= -->
    <section id="hero">
        <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

            <div class="carousel-inner" role="listbox">

                @if ($AllSlider->isNotEmpty())
                    @foreach ($AllSlider as $index => $slider)
                        <!-- Slide 1 -->
                        <div class="carousel-item {{ $index === 0 ? 'active' : '' }}"
                            style="background-image: url(/uploads/slider/{{ $slider->image }});">
                            <div class="carousel-container">
                                <div class="carousel-content animate__animated animate__fadeInUp">
                                    @if ($slider->title !== null)
                                        <h2>{{ $slider->title }}</h2>
                                    @endif

                                    <p>{{ $slider->details }}</p>
                                    <div class="text-center"><a href="{{ $slider->link }}"
                                            class="btn-get-started">{{ $slider->button_text }}</a></div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif

            </div>

            <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
            </a>

            <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
            </a>

            <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        </div>
    </section><!-- End Hero -->

    <main id="main">

        <!-- ======= About Me Section ======= -->
        <section id="about-us" class="about-us">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>About Us</h2>
                </div>

                <div class="row content">
                    <div class="col-lg-6 center-section" data-aos="fade-right">

                        <div class="center-line">
                            <h3>{{ $AboutData->title }}</h3>
                            <h4>{{ $AboutData->subtitle }}</h4>
                            <p class="text-justify">
                                {{ $AboutData->description }}
                            </p>
                        </div>

                    </div>
                    <div class="pt-4 col-lg-6 pt-lg-0" data-aos="fade-left">

                        <img class="text-center img-fluid" src="/uploads/about/{{ $AboutData->image }}" alt="image">

                    </div>
                </div>

            </div>
        </section><!-- End About Me Section -->

        <!-- ======= Services Section ======= -->
        <section id="services" class="services section-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Services Offered</h2>
                </div>

                <div class="row">

                    @if ($ServiceData->isNotEmpty())
                        @foreach ($ServiceData as $index => $service)
                            <div class="mt-4 col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in"
                                data-aos-delay="100">
                                <div class="icon-box iconbox-yellow">
                                    <div class="icon">
                                        <i>
                                            <img class="thumbnail rounded-circle img-fluid"
                                                style="width: 100px; height: 100px; object-fit: cover;"
                                                src="/uploads/service/{{ !empty($service->image) ? $service->image : 'service.jpg' }}"
                                                alt="{{ $service->name }}">
                                        </i>
                                    </div>
                                    <h4>
                                        <a href="{{ URL::to('service') }}/{{ $service->slug }}/{{ $service->id }}">
                                            {{ $service->name }}
                                        </a>
                                    </h4>
                                    <p>{{ \Illuminate\Support\Str::limit($service->description, 175, '...') }}</p>
                                </div>
                            </div>
                        @endforeach
                    @endif

                </div>

            </div>
        </section><!-- End Services Section -->

        <!-- ======= Why Choose Me Section ======= -->
        <section id="about-us" class="about-us">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Why Choose Us</h2>
                </div>

                <div class="row content">
                    <div class="col-lg-6 center-section" data-aos="fade-right">
                        <div class="center-line">
                            <h3>{{ $WhyChooseUsData->title }}</h3>
                            <h5>{{ $WhyChooseUsData->short_description }}</h5>
                        </div>

                    </div>
                    <div class="pt-4 col-lg-6 pt-lg-0 whychooseme" data-aos="fade-left">
                        {!! $WhyChooseUsData->details !!}
                    </div>
                    <style>
                        .whychooseme li {
                            list-style: none;
                            /* Remove default bullet points */
                            position: relative;
                            padding-left: 30px;
                            /* Space for the icon */
                        }

                        .whychooseme li::before {
                            content: "\2705";
                            /* Unicode character for a bullet */
                            position: absolute;
                            left: 0;
                            color: #106915;
                            /* Example color */
                            font-size: 16px;
                            /* Adjust size if needed */
                        }
                    </style>
                </div>

            </div>
        </section><!-- End Why Choose Me Section -->

        <!-- ======= Our Team Section ======= -->
        <section id="testimonials" class="testimonials section-bg">
            <div class="container">

                <div class="section-title">
                    <h2>Our Team</h2>
                </div>

                <div class="row">

                    @if ($OurTeamData->isNotEmpty())
                        @foreach ($OurTeamData as $index => $ourteam)
                            <div class="col-lg-6" data-aos="fade-up">
                                <div class="mt-4 testimonial-item">
                                    <img class="testimonial-img"
                                        src="/uploads/our_team/{{ !empty($ourteam->image) ? $ourteam->image : 'testimonial.jpg' }}"
                                        alt="{{ $ourteam->name }}">
                                    <h3>{{ $ourteam->name }}</h3>
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>

                                        {{ \Illuminate\Support\Str::limit($ourteam->designation, 190, '...') }}
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                            </div>
                        @endforeach
                    @endif




                </div>

            </div>
        </section><!-- End Testimonials Section -->


        <!-- ======= Call-to-Action Section ======= -->
        <section class="py-5 overflow-hidden text-center bg-light position-relative">
            <div class="container">
                <h2 class="mb-4 fw-bold">{{ $CallToActionData->headline }}</h2>
                <a href="{{ $CallToActionData->link }}"
                    class="btn btn-success btn-lg btn-animated">{{ $CallToActionData->button_text }}</a>
            </div>

            <!-- Background shapes for style -->
            <div class="top-0 position-absolute start-50 translate-middle-x w-100 h-100 bg-opacity-10"
                style="pointer-events: none;">
                <div class="opacity-25 rounded-circle bg-primary position-absolute"
                    style="width: 200px; height: 200px; top: -50px; left: -50px;"></div>
                <div class="opacity-25 rounded-circle bg-secondary position-absolute"
                    style="width: 300px; height: 300px; bottom: -100px; right: -100px;"></div>
            </div>
        </section><!-- End Call-to-Action Section -->

        <!-- ======= Payment Section ======= -->
        <section id="clients" class="clients">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Payment</h2>
                </div>

                <div class="clearfix row no-gutters clients-wrap" data-aos="fade-up">


                    @if ($PaymentMethod->isNotEmpty())
                        @foreach ($PaymentMethod as $index => $singlepayment)
                            <div class="col-lg-4 col-md-4 col-12">
                                <div class="client-logo">
                                    <img src="/uploads/paymentmethod/{{ $singlepayment->image }}" class="img-fluid"
                                        alt="{{ $singlepayment->name }}">
                                </div>
                            </div>
                        @endforeach
                    @endif

                </div>

            </div>
        </section><!-- End Payment Section -->

    </main><!-- End #main -->
@endsection

{{-- push custom js before end of body tag --}}
@push('scripts')
    <script>
        $(document).ready(function() {
            // your code
        });
    </script>
@endpush
