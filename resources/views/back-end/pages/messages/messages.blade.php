@extends('back-end.layout.master')
@section('pageTitle', isset($pageTitle) ? $pageTitle : 'All Message List')
@section('content')

    <!-- BEGIN: Page content-->
    <div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header d-flex">
                        <h5 class="p-2 mb-0 mr-auto box-title">Faq</h5>
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
            <form id="DataAddUpdate" method="post" enctype="multipart/form-data">
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
                                        <p><strong>Name:</strong> <span id="display-name"></span></p>
                                        <p><strong>Email:</strong> <span id="display-email"></span></p>
                                        <p><strong>Phone:</strong> <span id="display-phone"></span></p>
                                        <p><strong>Message:</strong> <span id="display-message"></span></p>
                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
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

            $('#dt-scroll-horizonal').DataTable({
                processing: true,
                responsive: true,
                serverSide: true,
                destroy: true,
                scrollX: true,
                ajax: {
                    url: "{{ route('admin.messages.data') }}", // URL will change
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
                        title: 'Name',
                        data: 'name',
                        name: 'name'
                    },
                    {
                        title: 'Email',
                        data: 'email',
                        name: 'email'
                    },
                    {
                        title: 'Phone',
                        data: 'phone',
                        name: 'phone'
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
                            url: "{{ route('admin.messages.delete') }}" // URL will change
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


            $(document).on('click', '.tableEdit', function() {
                let Id = $(this).data('id');
                $('.modal-title').text('Message Detail');
                $('#hidden-id').removeAttr("disabled");
                $('#hidden-id').val(Id);
                $(this).ajaxSubmit({
                    data: {
                        "id": Id
                    },
                    dataType: 'json',
                    method: 'GET',
                    url: "{{ route('admin.messages.edit') }}" // URL will change
                        ,
                    success: function(responseText) {
                        document.getElementById("display-name").textContent = responseText.data
                            .name;
                        document.getElementById("display-email").innerHTML =
                            `<a href="mailto:${responseText.data.email}">${responseText.data.email}</a>`;
                        document.getElementById("display-phone").innerHTML =
                            `<a href="tel:${responseText.data.phone}">${responseText.data.phone}</a>`;
                        document.getElementById("display-message").textContent = responseText
                            .data.message;

                        $("#DataAdd").modal('show');
                    }
                });
            });

        });
    </script>
@endpush
