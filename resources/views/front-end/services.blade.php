@extends('front-end.layouts.master')
{{-- @section('title', $metadata->title ?? 'Default Title')
@section('description', $metadata->description ?? 'Default Description')
@section('keywords', $metadata->keywords ?? 'Default Keywords') --}}

@section('content')

    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <section id="breadcrumbs" class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>Services</h2>
                    <ol>
                        <li><a href="{{ route('home') }}">Home</a></li>
                        <li>Services</li>
                    </ol>
                </div>

            </div>
        </section><!-- End Breadcrumbs -->

        <!-- ======= Services Section ======= -->
        <section id="services" class="services section-bg">
            <div class="container" data-aos="fade-up">

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
                                    <h3><a
                                            href="{{ URL::to('service') }}/{{ $service->slug }}/{{ $service->id }}">{{ $service->name }}</a>
                                    </h3>
                                    <p>{{ \Illuminate\Support\Str::limit($service->description, 175, '...') }}</p>
                                </div>
                            </div>
                        @endforeach
                    @endif

                </div>

            </div>
        </section><!-- End Services Section -->

        <!-- ======= Frequently Asked Questions Section ======= -->
        <section id="faq" class="faq section-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Frequently Asked Questions</h2>
                </div>

                <div class="faq-list">
                    <ul>

                        @if ($FaqData->isNotEmpty())
                            @foreach ($FaqData as $index => $faq)
                                <li data-aos="fade-up">
                                    <i class="bx bx-help-circle icon-help"></i>
                                    <a data-bs-toggle="collapse" class="collapse"
                                        data-bs-target="#faq-list-{{ $index }}">
                                        {{ $faq->question }}
                                        <i class="bx bx-chevron-down icon-show"></i>
                                        <i class="bx bx-chevron-up icon-close"></i>
                                    </a>
                                    <div id="faq-list-{{ $index }}" class="collapse" data-bs-parent=".faq-list">
                                        <p>
                                            {{ $faq->answer }}
                                        </p>
                                    </div>
                                </li>
                            @endforeach
                        @endif

                    </ul>
                </div>
            </div>
        </section><!-- End Frequently Asked Questions Section -->


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
