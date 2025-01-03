@extends('back-end.layout.master')
@section('pageTitle', isset($pageTitle) ? $pageTitle : 'All Service List')
@section('content')

    <!-- BEGIN: Page content-->
    <div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header d-flex">
                        <h5 class="p-2 mb-0 mr-auto box-title">Service</h5>
                        <button type="button" class="btn btn-primary btn-sm DataAddButton">Add Service</button>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered w-100 nowrap" id="dt-scroll-horizonal" style="width:100%">

                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div><!-- END: Page content-->

    <div class="modal fade" id="DataAdd" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <form id="DataAddUpdate" action="{{ route('admin.service.insert') }}" method="post"
                enctype="multipart/form-data">
                <input type="hidden" name="id" id="hidden-id">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Data Add/Update</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="row">

                                    <div class="col-lg-6">
                                        <div class="mb-4 form-group">
                                            <label for="name">Service Name</label>
                                            <input class="form-control" type="text" name="name"
                                                placeholder="Service Name" required>
                                            @error('name')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="mb-4 form-group">
                                            <label for="exampleInputImage">Image</label>
                                            <input class="form-control" type="file" name="image">
                                            @error('image')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="mb-4 form-group">
                                            <label for="exampleInputStatus">Status <span
                                                    class="text-danger">*</span></label>
                                            <select class="form-control" name="status" required>
                                                <option value="" selected>Select status</option>
                                                <option value="active">Active</option>
                                                <option value="inactive">Inactive</option>
                                            </select>
                                            @error('status')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="mb-4 form-group">
                                            <label for="description">Service Short Description</label>
                                            <textarea class="form-control" name="description" placeholder="Service Short Description"></textarea>
                                            @error('description')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="mb-4 form-group">
                                            <label for="details">Service Description</label>
                                            <textarea class="details form-control" name="details" placeholder="Long Description"></textarea>
                                            @error('details')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="mb-4 form-group">
                                            <label for="meta_title">Meta Title</label>
                                            <input type="text" name="meta_title" class="form-control"
                                                placeholder="SEO Title">
                                            @error('meta_title')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="mb-4 form-group">
                                            <label for="meta_keywords">Meta Keywords</label>
                                            <input type="text" name="meta_keywords" class="form-control"
                                                placeholder="SEO keywords - use , for multiple">
                                            @error('meta_keywords')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="mb-4 form-group">
                                            <label for="meta_description">Meta Description</label>
                                            <textarea class="form-control" name="meta_description" placeholder="Product SEO Description"></textarea>
                                            @error('meta_description')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                        <button class="btn btn-primary" type="submit">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>


@endsection

<!-- Page specific script -->

@push('script')
    <script>
        $(function() {

            // Summernote
            $('.details').summernote({
                height: 200, // set editor height
                minHeight: 100, // set minimum height of editor
                maxHeight: 400, // set maximum height of editor
                focus: true // set focus to editable area after initializing summernote
            });


            $(document).on('click', '.DataAddButton', function() {
                $('#hidden-id').attr("disabled", "true");
                $('.modal-title').text('Add Service');
                // Reset the Summernote editor content
                $('textarea[name="details"]').summernote('code', '');
                $("#DataAdd").modal('show');
            });

            $('#DataAddUpdate').ajaxForm({
                error: formError,
                success: function(responseText, statusText, xhr, $form) {
                    formSuccess(responseText, statusText, xhr, $form);
                    $('#dt-scroll-horizonal').DataTable().draw(true);
                    $("#DataAdd").modal('hide');
                    $('#hidden-id').prop("disabled", false);
                },
                clearForm: true,
                resetForm: true
            });

            $('#dt-scroll-horizonal').DataTable({
                processing: true,
                responsive: true,
                serverSide: true,
                destroy: true,
                scrollX: true,
                ajax: {
                    url: "{{ route('admin.service.data') }}", // URL will change
                    type: 'GET',
                    cache: false,
                    data: function(d) {}
                },
                columns: [ // All columns will change
                    {
                        title: 'SL',
                        data: 'id',
                        name: 'id'
                    },
                    {
                        title: 'Service Name',
                        data: 'name',
                        name: 'name'
                    },
                    {
                        title: 'Image',
                        data: 'image',
                        name: 'image'
                    },
                    {
                        title: 'Status',
                        data: 'status',
                        name: 'status'
                    },
                    {
                        title: 'Action',
                        data: 'action',
                        name: 'action'
                    }
                ],
            });

            $(document).on('click', '.tableDelete', function() {
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.value) {
                        let Id = $(this).data('id');
                        $(this).ajaxSubmit({
                            data: {
                                "delete": Id
                            },
                            method: 'POST',
                            dataType: 'json',
                            url: "{{ route('admin.service.insert') }}" // URL will change
                                ,
                            success: function(responseText) {
                                // formSuccess(responseText, statusText, xhr, $form);
                                Swal.fire("Congratulations!", responseText.message,
                                    "success");
                                $('#dt-scroll-horizonal').DataTable().draw(true);
                            }
                        });
                        // Swal.fire("Congratulations!", responseText.message, "success");
                    } else {
                        Swal.fire("Congratulations!", "Your data is safe!", "success");
                    }
                });

            });

            $('#DataAdd').on('hidden.bs.modal', function() {
                $("#DataAddUpdate").trigger("reset");
            });


            $(document).on('click', '.tableEdit', function() {
                let Id = $(this).data('id');
                $('.modal-title').text('Update Service');
                $('#hidden-id').removeAttr("disabled");
                $('#hidden-id').val(Id);
                $(this).ajaxSubmit({
                    data: {
                        "id": Id
                    },
                    dataType: 'json',
                    method: 'GET',
                    url: "{{ route('admin.service.edit') }}" // URL will change
                        ,
                    success: function(responseText) {
                        $('input[name^="name"]').val(responseText.data.name);
                        $('textarea[name^="description"]').val(responseText.data.description);
                        $('select[name^="status"]').val(responseText.data.status);
                        $('input[name^="meta_title"]').val(responseText.data.meta_title);
                        $('input[name^="meta_keywords"]').val(responseText.data.meta_keywords);
                        $('textarea[name^="meta_description"]').val(responseText.data
                            .meta_description);
                        $(".details").summernote('code', responseText.data.details);
                        $("#DataAdd").modal('show');
                    }
                });
            });

        });
    </script>
@endpush
