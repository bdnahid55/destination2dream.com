@extends('back-end.layout.master')
@section('pageTitle', isset($pageTitle) ? $pageTitle : 'Update Call To Action')
@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0 card-title">Update Call To Action</h5>
                </div>
                <div class="card-body">
                    <form id="loginForm" action="{{ route('admin.call_to_action.update', $CallToActionData->id) }}"
                        method="post" enctype="multipart/form-data">
                        @csrf

                        <div class="row">

                            <div class="col-lg-6">
                                <div class="mb-4 form-group">
                                    <label for="headline">Call To Action Headline</label>
                                    <input type="text" name="headline" value="{{ $CallToActionData->headline }}"
                                        class="form-control" placeholder="Ex: Book Your Free Consultation" required>
                                    @error('headline')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="mb-4 form-group">
                                    <label for="button_text">Call To Action Button Text</label>
                                    <input type="text" name="button_text" value="{{ $CallToActionData->button_text }}"
                                        class="form-control" placeholder="Ex: Book Appointment" required>
                                    @error('button_text')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="mb-4 form-group">
                                    <label for="link">Call To Action Link</label>
                                    <textarea class="form-control" name="link" placeholder="Your appointment link" required>{{ $CallToActionData->link }}</textarea>
                                    @error('link')
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
