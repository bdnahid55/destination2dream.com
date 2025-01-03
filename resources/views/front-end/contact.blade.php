@extends('front-end.layouts.master')
@section('content')
    <main id="main">

        <style>
            .contact_details {
                box-shadow: 1px 2px 18px 3px #f2f2f2;
                padding: 20px 30px 20px 30px;
            }

            .contact_details p {
                display: inline-block;
            }
        </style>
        <!-- ======= Breadcrumbs ======= -->
        <section id="breadcrumbs" class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>Contact</h2>
                    <ol>
                        <li><a href="{{ route('home') }}">Home</a></li>
                        <li>Contact</li>
                    </ol>
                </div>

            </div>
        </section><!-- End Breadcrumbs -->

        <section id="contact" class="contact">
            <div class="container">

                <div class="row justify-content-center" data-aos="fade-up">

                    <div class="col-lg-10">

                        <div class="info-wrap">
                            <div class="row">
                                <div class="col-lg-4 info">
                                    <i class="bi bi-geo-alt"></i>
                                    <h4>Location:</h4>
                                    {!! $ContactData->address !!}
                                </div>

                                <div class="mt-4 col-lg-4 info mt-lg-0">
                                    <i class="bi bi-envelope"></i>
                                    <h4>Email:</h4>
                                    <p>{{ $ContactData->email }}<br>{{ $ContactData->support_email }}</p>
                                </div>

                                <div class="mt-4 col-lg-4 info mt-lg-0">
                                    <i class="bi bi-phone"></i>
                                    <h4>Call:</h4>
                                    <p>{{ $ContactData->phone }}<br>{{ $ContactData->support_phone }}</p>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

                <div class="mt-5 row justify-content-center" data-aos="fade-up">
                    <div class="bg-white col-lg-10">
                        <div class="mt-5" data-aos="fade-up">
                            <div class="contact_details">
                                {!! $ContactData->details !!}
                            </div>
                        </div>
                    </div>
                </div>

                <div class="mt-5 row justify-content-center" data-aos="fade-up">
                    <div class="col-lg-10">
                        <form action="{{ route('message.send') }}" method="post" role="form" class="php-email-form">
                            @csrf
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <input type="text" name="name" class="form-control" id="name"
                                        placeholder="Your Name" required>
                                    @error('name')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="mt-3 col-md-6 form-group mt-md-0">
                                    <input type="email" class="form-control" name="email" id="email"
                                        placeholder="Your Email" required>
                                    @error('email')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="mt-3 form-group">
                                <input type="number" class="form-control" name="phone" id="subject"
                                    placeholder="Your Phone" required>
                                @error('phone')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="mt-3 form-group">
                                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                                @error('message')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>

                            <div class="text-center"><button type="submit">Send Message</button></div>
                        </form>
                    </div>
                </div>

            </div>
        </section><!-- End Contact Section -->

    </main><!-- End #main -->
@endsection

{{-- push custom js before end of body tag --}}
@push('scripts')
@endpush
