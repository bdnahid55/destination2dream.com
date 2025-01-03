@extends('back-end.layout.master')
@section('pageTitle', isset($pageTitle) ? $pageTitle : 'Update contact page')
@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0 card-title">Update contact page</h5>
                </div>
                <div class="card-body">
                    <form id="loginForm" action="{{ route('admin.contact.update', $ContactData->id) }}" method="post"
                        enctype="multipart/form-data">
                        @csrf

                        <div class="row">

                            <div class="col-lg-6">
                                <div class="mb-4 form-group">
                                    <label for="email">Contact Email</label>
                                    <input type="email" name="email" value="{{ $ContactData->email }}"
                                        class="form-control" placeholder="Ex: Your email" required>
                                    @error('email')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="mb-4 form-group">
                                    <label for="support_email">Contact Email 2</label>
                                    <input type="email" name="support_email" value="{{ $ContactData->support_email }}"
                                        class="form-control" placeholder="Ex: Your support email" required>
                                    @error('support_email')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="mb-4 form-group">
                                    <label for="phone">Phone</label>
                                    <input type="text" name="phone" value="{{ $ContactData->phone }}"
                                        class="form-control" placeholder="Ex: Phone Number" required>
                                    @error('phone')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="mb-4 form-group">
                                    <label for="support_phone">Phone 2</label>
                                    <input type="text" name="support_phone" value="{{ $ContactData->support_phone }}"
                                        class="form-control" placeholder="Ex: Phone Number" required>
                                    @error('support_phone')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="mb-4 form-group">
                                    <label for="address">Contact Address</label>
                                    <textarea class="address form-control" name="address" placeholder="Contact Address">{{ $ContactData->address }}</textarea>
                                    @error('address')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="mb-4 form-group">
                                    <label for="details">Contact Page Description</label>
                                    <textarea class="details form-control" name="details" placeholder="Contact Page Description">{{ $ContactData->details }}</textarea>
                                    @error('details')
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

    <script>
        $(function() {

            // Summernote
            $('.address').summernote({
                height: 200, // set editor height
                minHeight: 100, // set minimum height of editor
                maxHeight: 400, // set maximum height of editor
                focus: true // set focus to editable area after initializing summernote
            });
            // Summernote
            $('.details').summernote({
                height: 400, // set editor height
                minHeight: 100, // set minimum height of editor
                maxHeight: 400, // set maximum height of editor
                focus: true // set focus to editable area after initializing summernote
            });

        });
    </script>

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
