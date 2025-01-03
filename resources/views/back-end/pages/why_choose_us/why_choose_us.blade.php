@extends('back-end.layout.master')
@section('pageTitle', isset($pageTitle) ? $pageTitle : 'Update Why Choose Us')
@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0 card-title">Update Why Choose Us </h5>
                </div>
                <div class="card-body">
                    <form id="loginForm" action="{{ route('admin.why_choose_us.update', $WhyChooseUsData->id) }}"
                        method="post" enctype="multipart/form-data">
                        @csrf

                        <div class="row">

                            <div class="col-lg-6">
                                <div class="mb-4 form-group">
                                    <label for="title">Title</label>
                                    <input type="text" name="title" value="{{ $WhyChooseUsData->title }}"
                                        class="form-control" placeholder="Ex: WHY ME?" required>
                                    @error('title')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="mb-4 form-group">
                                    <label for="short_description">Introductory Paragraph</label>
                                    <textarea class="form-control" rows="5" name="short_description"
                                        placeholder="What makes you or your services stand out and why trust or choose you?" required>{{ $WhyChooseUsData->short_description }}</textarea>
                                    @error('short_description')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="mb-4 form-group">
                                    <label for="details">Detailed with Explanation</label>
                                    <textarea class="details form-control" name="details"
                                        placeholder="What qualities, values, or benefits do you want to highlight about your services?">{{ $WhyChooseUsData->details }}</textarea>
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
        $(document).ready(function() {
            // Summernote
            $('.details').summernote({
                height: 200, // set editor height
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
