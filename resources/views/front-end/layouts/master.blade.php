<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Your Company</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="/assets/img/favicon.png" rel="icon">
    <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/assets/css/style.css" rel="stylesheet">
    @stack('stylesheets')

</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
        <div class="container d-flex align-items-center">

            @php
                $WebsiteSettingData = App\Models\WebsiteSetting::first();
            @endphp


            <h1 class="logo me-auto">
                <!-- Uncomment below if you prefer to use text logo -->

                {{-- <a href="#"><span>Com</span>pany</a> --}}
                <a href="{{ route('home') }}" class="logo me-auto me-lg-0">
                    <img src="/uploads/logo/{{ $WebsiteSettingData->company_logo }}"
                        alt="{{ $WebsiteSettingData->company_name }}" class="img-fluid">
                </a>

            </h1>

            <nav id="navbar" class="order-last navbar order-lg-0">
                <ul>
                    <li><a href="{{ route('home') }}" class="active">Home</a></li>
                    <li><a href="{{ route('appointment') }}">Appointment</a></li>
                    <li><a href="{{ route('about') }}">About Us</a></li>
                    <li><a href="{{ route('service') }}">Services</a></li>
                    <li><a href="{{ route('contact') }}">Contact</a></li>
                    <li class="dropdown"><a href="#"><span>Country</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            @php
                                $PageLists = App\Models\Page::where('location', 'menu')->get();
                            @endphp
                            @foreach ($PageLists as $page)
                                <li><a href="">{{ $page->title }}</a></li>
                                {{-- <li><a
                                        href="{{ URL::to('/') }}/{{ $page->slug }}/{{ $page->id }}">{{ $page->title }}</a>
                                </li> --}}
                            @endforeach
                        </ul>
                    </li>
                    <li><a href="#">Login </a></li>

                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

            <div class="header-social-links d-flex">
                <a href="{{ $WebsiteSettingData->twitter_url }}" target=”_blank” class="twitter"><i
                        class="bu bi-twitter"></i></a>
                <a href="{{ $WebsiteSettingData->facebook_url }}" target=”_blank” class="facebook"><i
                        class="bu bi-facebook"></i></a>
                <a href="{{ $WebsiteSettingData->instagram_url }}" target=”_blank” class="instagram"><i
                        class="bu bi-instagram"></i></a>
                <a href="{{ $WebsiteSettingData->youtube_url }}" target=”_blank” class="youtube"><i
                        class="bu bi-youtube"></i></i></a>
            </div>

        </div>
    </header><!-- End Header -->

    <!-- ======= Main Section ======= -->

    {{-- Content section Start --}}
    @yield('content')
    {{-- Content section Ens --}}


    <!-- ======= Footer ======= -->
    <footer id="footer">

        <div class="footer-top">
            <div class="container">
                <div class="row">

                    <div class="col-lg-4 col-md-6 footer-contact">
                        <h3>{{ $WebsiteSettingData->company_name }}</h3>
                        <p>
                            {{ $WebsiteSettingData->company_slogan }} <br>
                            {{ $WebsiteSettingData->company_address }}<br><br>
                            <strong>Phone:</strong> {{ $WebsiteSettingData->phone }}<br>
                            <strong>Email:</strong> {{ $WebsiteSettingData->email }}<br>
                        </p>
                    </div>

                    <div class="col-lg-4 col-md-6 footer-links">
                        <h4>Useful Links</h4>
                        <ul>
                            @php
                                $UsefulLinks = App\Models\Page::where('location', 'footer1')->get();
                            @endphp

                            @foreach ($UsefulLinks as $usefullink)
                                <li><i class="bx bx-chevron-right"></i> <a
                                        href="{{ URL::to('/') }}/{{ $usefullink->slug }}/{{ $usefullink->id }}">{{ $usefullink->title }}</a>
                                </li>
                            @endforeach

                        </ul>
                    </div>

                    <div class="col-lg-4 col-md-6 footer-links">
                        <h4>Explore More</h4>
                        <ul>
                            @php
                                $ExploreMoreData = App\Models\Page::where('location', 'footer2')->get();
                            @endphp
                            @foreach ($ExploreMoreData as $ExploreMore)
                                <li><i class="bx bx-chevron-right"></i> <a
                                        href="{{ URL::to('/') }}/{{ $ExploreMore->slug }}/{{ $ExploreMore->id }}">{{ $ExploreMore->title }}</a>
                                </li>
                            @endforeach
                        </ul>
                    </div>

                </div>
            </div>
        </div>

        <div class="container py-4 d-md-flex">

            <div class="text-center me-md-auto text-md-start">
                <div class="copyright">
                    &copy; {{ $WebsiteSettingData->copyright_text }}
                </div>
            </div>
            <div class="pt-3 text-center social-links text-md-right pt-md-0">
                <a href="{{ $WebsiteSettingData->twitter_url }}" target=”_blank” class="twitter"><i
                        class="bx bxl-twitter"></i></a>
                <a href="{{ $WebsiteSettingData->facebook_url }}" target=”_blank” class="facebook"><i
                        class="bx bxl-facebook"></i></a>
                <a href="{{ $WebsiteSettingData->instagram_url }}" target=”_blank” class="instagram"><i
                        class="bx bxl-instagram"></i></a>
                <a href="{{ $WebsiteSettingData->youtube_url }}" target=”_blank” class="youtube"><i
                        class="bx bxl-youtube"></i></a>
            </div>
        </div>
    </footer><!-- End Footer -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

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

        /* Adding animation to h2 and button */
        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }

            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes buttonBounce {

            0%,
            20%,
            50%,
            80%,
            100% {
                transform: translateY(0);
            }

            40% {
                transform: translateY(-10px);
            }

            60% {
                transform: translateY(-5px);
            }
        }

        h2 {
            animation: fadeIn 1s ease-out;
        }

        .btn-animated {
            animation: buttonBounce 2s infinite;
        }

        /* Optional: Add a hover effect for button */
        .btn-primary:hover {
            background-color: #0056b3;
            color: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s, box-shadow 0.3s;
        }
    </style>



    <!-- Vendor JS Files -->
    <script src="/assets/vendor/aos/aos.js"></script>
    <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="/assets/vendor/waypoints/noframework.waypoints.js"></script>
    <script src="/back-end/plugins/toastr/toastr.min.js"></script>


    <!-- Template Main JS File -->
    <script src="/assets/js/main.js"></script>
    @stack('scripts')

</body>

</html>
