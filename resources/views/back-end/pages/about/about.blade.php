@extends('back-end.layout.master')
@section('pageTitle', isset($pageTitle) ? $pageTitle : 'Update About Page')
@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0 card-title">Update About Page</h5>
                </div>
                <div class="card-body">
                    <form id="loginForm" action="{{ route('admin.about.update', $AboutData->id) }}" method="post"
                        enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="col-md-6">
                                @if (!empty($AboutData->image))
                                    <img src="/uploads/about/{{ $AboutData->image }}" class="img-fluid"
                                        alt="{{ $AboutData->title }}">
                                @endif
                            </div>

                            <div class="col-md-6">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="title" class="col-form-label">Main Title</label>
                                    <input type="text" name="title" value="{{ $AboutData->title }}"
                                        class="form-control" required>
                                    @error('title')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="mb-4 form-group">
                                    <label for="image">Picture (Picture Size minimum: 600x400)</label>
                                    <input class="form-control" type="file" name="image">
                                    @error('image')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-4 form-group">
                                    <label for="subtitle" class="col-form-label">Subtitle</label>
                                    <textarea class="form-control" name="subtitle">{{ $AboutData->subtitle }}</textarea>
                                    @error('subtitle')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-4 form-group">
                                    <label for="description" class="col-form-label">Description</label>
                                    <textarea class="form-control" name="description" rows="5">{{ $AboutData->description }}</textarea>
                                    @error('description')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-4 form-group">
                                    <label for="extra_details" class="col-form-label">Details</label>
                                    <textarea class="form-control extra_details" name="extra_details">{{ $AboutData->extra_details }}</textarea>
                                    @error('extra_details')
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
            $('.extra_details').summernote({
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
