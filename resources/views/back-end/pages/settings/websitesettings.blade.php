@extends('back-end.layout.master')
@section('pageTitle', isset($pageTitle) ? $pageTitle : 'Update Website Settings')
@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0 card-title">Update Website Settings</h5>
                </div>
                <div class="card-body">
                    <form id="loginForm" action="{{ route('admin.website_settings.update', $WebsiteSettingsData->id) }}"
                        method="post" enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="col-md-6">
                                @if (!empty($WebsiteSettingsData->company_logo))
                                    <img src="/uploads/logo/{{ $WebsiteSettingsData->company_logo }}" class="img-fluid"
                                        alt="{{ $WebsiteSettingsData->company_name }}">
                                @endif
                            </div>

                            <div class="col-md-6">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="company_logo">Company Logo (Logo Size max: 200x75)</label>
                                    <input class="form-control" type="file" name="company_logo">
                                    @error('company_logo')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="company_name" class="col-form-label">Company Name</label>
                                    <input type="text" name="company_name"
                                        value="{{ $WebsiteSettingsData->company_name }}" class="form-control" required>
                                    @error('company_name')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="company_slogan" class="col-form-label">Company Slogan</label>
                                    <input type="text" name="company_slogan"
                                        value="{{ $WebsiteSettingsData->company_slogan }}" class="form-control" required>
                                    @error('company_slogan')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="company_address" class="col-form-label">Company Address</label>
                                    <textarea class="form-control" name="company_address">{{ $WebsiteSettingsData->company_address }}</textarea>
                                    @error('company_address')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-4 form-group">
                                    <label for="company_description" class="col-form-label">Company Description</label>
                                    <textarea class="form-control" name="company_description" rows="3">{{ $WebsiteSettingsData->company_description }}</textarea>
                                    @error('company_description')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="support_phone" class="col-form-label">Support phone</label>
                                    <input type="text" name="support_phone"
                                        value="{{ $WebsiteSettingsData->support_phone }}" class="form-control" required>
                                    @error('support_phone')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="phone" class="col-form-label">Company phone</label>
                                    <input type="text" name="phone" value="{{ $WebsiteSettingsData->phone }}"
                                        class="form-control" required>
                                    @error('phone')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="copyright_text" class="col-form-label">Copyright text</label>
                                    <input type="text" name="copyright_text"
                                        value="{{ $WebsiteSettingsData->copyright_text }}" class="form-control" required>
                                    @error('copyright_text')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="email" class="col-form-label">Email</label>
                                    <input type="text" name="email" value="{{ $WebsiteSettingsData->email }}"
                                        class="form-control" required>
                                    @error('email')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="facebook_url" class="col-form-label">Facebook link</label>
                                    <input type="text" name="facebook_url"
                                        value="{{ $WebsiteSettingsData->facebook_url }}" class="form-control" required>
                                    @error('facebook_url')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="twitter_url" class="col-form-label">Twitter link</label>
                                    <input type="text" name="twitter_url"
                                        value="{{ $WebsiteSettingsData->twitter_url }}" class="form-control" required>
                                    @error('twitter_url')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="youtube_url" class="col-form-label">Youtube link</label>
                                    <input type="text" name="youtube_url"
                                        value="{{ $WebsiteSettingsData->youtube_url }}" class="form-control" required>
                                    @error('youtube_url')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="instagram_url" class="col-form-label">Instagram link</label>
                                    <input type="text" name="instagram_url"
                                        value="{{ $WebsiteSettingsData->instagram_url }}" class="form-control" required>
                                    @error('instagram_url')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="mb-4 form-group">
                                    <label for="meta_title">Meta Title</label>
                                    <input type="text" name="meta_title"
                                        value="{{ $WebsiteSettingsData->meta_title }}" class="form-control"
                                        placeholder="SEO Title">
                                    @error('meta_title')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="mb-4 form-group">
                                    <label for="meta_keywords">Meta Keywords</label>
                                    <input type="text" name="meta_keywords"
                                        value="{{ $WebsiteSettingsData->meta_keywords }}" class="form-control"
                                        placeholder="SEO keywords - use , for multiple">
                                    @error('meta_keywords')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="mb-4 form-group">
                                    <label for="meta_description">Meta Description</label>
                                    <textarea class="form-control" name="meta_description" placeholder="Product SEO Description">{{ $WebsiteSettingsData->meta_description }}</textarea>
                                    @error('meta_description')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="android_app_url" class="col-form-label">Platstore App link</label>
                                    <input type="text" name="android_app_url"
                                        value="{{ $WebsiteSettingsData->android_app_url }}" class="form-control"
                                        required>
                                    @error('android_app_url')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                        </div>

                        <div class="text-left form-group">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection

<!-- Page specific script -->

@push('script')
    @if (Session::has('message'))
        <script>
            $(document).ready(function() {

                var type = "{{ Session::get('alert-type', 'info') }}"; // Get alert type
                var message = "{{ Session::get('message') }}"; // Get message

                switch (type) {
                    case 'info':
                        toastr.info(message);
                        break;
                    case 'success':
                        toastr.success(message);
                        break;
                    case 'warning':
                        toastr.warning(message);
                        break;
                    case 'error':
                        toastr.error(message);
                        break;
                }
            });
        </script>
    @endif
@endpush
