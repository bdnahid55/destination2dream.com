@extends('back-end.layout.master')
@section('pageTitle', isset($pageTitle) ? $pageTitle : 'All Faq List')
@section('content')

    <!-- BEGIN: Page content-->
    <div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header d-flex">
                        <h5 class="p-2 mb-0 mr-auto box-title">Faq</h5>
                        <button type="button" class="btn btn-primary btn-sm DataAddButton">Add Faq</button>
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
            <form id="DataAddUpdate" action="{{ route('admin.faq.insert') }}" method="post" enctype="multipart/form-data">
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


                                    <div class="col-lg-12">
                                        <div class="mb-4 form-group">
                                            <label for="question">Question</label>
                                            <textarea class="form-control" rows="5" name="question" placeholder="Question"></textarea>
                                            @error('question')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="mb-4 form-group">
                                            <label for="answer">Answer</label>
                                            <textarea class="form-control" rows="5" name="answer" placeholder="Answer"></textarea>
                                            @error('answer')
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

            $(document).on('click', '.DataAddButton', function() {
                $('#hidden-id').attr("disabled", "true");
                $('.modal-title').text('Add Faq');
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
                    url: "{{ route('admin.faq.data') }}", // URL will change
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
                        title: 'Question',
                        data: 'question',
                        name: 'question'
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
                            url: "{{ route('admin.faq.insert') }}" // URL will change
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
                $('.modal-title').text('Update Faq');
                $('#hidden-id').removeAttr("disabled");
                $('#hidden-id').val(Id);
                $(this).ajaxSubmit({
                    data: {
                        "id": Id
                    },
                    dataType: 'json',
                    method: 'GET',
                    url: "{{ route('admin.faq.edit') }}" // URL will change
                        ,
                    success: function(responseText) {
                        $('textarea[name^="question"]').val(responseText.data.question);
                        $('textarea[name^="answer"]').val(responseText.data.answer);
                        $('select[name^="status"]').val(responseText.data.status);
                        $("#DataAdd").modal('show');
                    }
                });
            });

        });
    </script>
@endpush
