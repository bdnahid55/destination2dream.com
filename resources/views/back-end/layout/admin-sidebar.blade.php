<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{ route('admin.dashboard') }}" class="text-center brand-link">
        <span class="brand-text font-weight-light">Admin Dashboard</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->

                <li class="nav-item">
                    <a href="#"
                        class="nav-link {{ request()->routeIs('admin.admin') || request()->routeIs('admin.admin') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>User Management<i class="right fas fa-angle-left"></i></p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('admin.admin') }}"
                                class="nav-link {{ request()->routeIs('admin.admin') ? 'active' : '' }}"><i
                                    class="far fa-circle nav-icon"></i>
                                <p>Admin</p>
                            </a>
                        </li>
                    </ul>
                </li>

                {{-- Messages menu  --}}

                <li class="nav-item">
                    <a href="{{ route('admin.messages') }}"
                        class="nav-link {{ request()->routeIs('admin.messages') ? 'active' : '' }}"><i
                            class="nav-icon fas fa-th"></i>
                        <p>Messages</p>
                    </a>
                </li>

                {{-- Faq menu  --}}

                <li class="nav-item">
                    <a href="{{ route('admin.faq') }}"
                        class="nav-link {{ request()->routeIs('admin.faq') ? 'active' : '' }}"><i
                            class="nav-icon fas fa-th"></i>
                        <p>Faqs</p>
                    </a>
                </li>

                {{-- Services menu  --}}

                <li class="nav-item">
                    <a href="{{ route('admin.service') }}"
                        class="nav-link {{ request()->routeIs('admin.service') ? 'active' : '' }}"><i
                            class="nav-icon fas fa-th"></i>
                        <p>Services</p>
                    </a>
                </li>

                {{-- Our Team menu  --}}

                <li class="nav-item">
                    <a href="{{ route('admin.our_team') }}"
                        class="nav-link {{ request()->routeIs('admin.our_team') ? 'active' : '' }}"><i
                            class="nav-icon fas fa-th"></i>
                        <p>Our Team</p>
                    </a>
                </li>

                {{-- Payment Methods menu  --}}

                <li class="nav-item">
                    <a href="{{ route('admin.payment_method') }}"
                        class="nav-link {{ request()->routeIs('admin.payment_method') ? 'active' : '' }}"><i
                            class="nav-icon fas fa-th"></i>
                        <p>Payment Method</p>
                    </a>
                </li>

                {{-- Page menu  --}}

                <li class="nav-item">
                    <a href="{{ route('admin.page') }}"
                        class="nav-link {{ request()->routeIs('admin.page') ? 'active' : '' }}"><i
                            class="nav-icon fas fa-th"></i>
                        <p>Page</p>
                    </a>
                </li>


                {{-- Settings menu  --}}

                <li class="nav-item">
                    <a href="#"
                        class="nav-link {{ request()->routeIs('admin.website_settings') || request()->routeIs('admin.website_settings') ? 'active' : '' }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Website Settings<i class="right fas fa-angle-left"></i></p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('admin.slider') }}"
                                class="nav-link {{ request()->routeIs('admin.slider') ? 'active' : '' }}"><i
                                    class="nav-icon fas fa-th"></i>
                                <p>Website Slider</p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('admin.about') }}"
                                class="nav-link {{ request()->routeIs('admin.about') ? 'active' : '' }}"><i
                                    class="nav-icon fas fa-th"></i>
                                <p>About</p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('admin.why_choose_us') }}"
                                class="nav-link {{ request()->routeIs('admin.why_choose_us') ? 'active' : '' }}"><i
                                    class="nav-icon fas fa-th"></i>
                                <p>Why Choose Us</p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('admin.contact') }}"
                                class="nav-link {{ request()->routeIs('admin.contact') ? 'active' : '' }}"><i
                                    class="nav-icon fas fa-th"></i>
                                <p>Contact Page</p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('admin.call_to_action') }}"
                                class="nav-link {{ request()->routeIs('admin.call_to_action') ? 'active' : '' }}"><i
                                    class="nav-icon fas fa-th"></i>
                                <p>Call To Action</p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('admin.website_settings') }}"
                                class="nav-link {{ request()->routeIs('admin.website_settings') ? 'active' : '' }}"><i
                                    class="nav-icon fas fa-th"></i>
                                <p>Basic Settings</p>
                            </a>
                        </li>
                    </ul>
                </li>





            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
