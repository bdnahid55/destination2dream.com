<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>PayPal Payment</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <!-- Payment Card -->
            <div class="card shadow-sm border-0 rounded-4">
                <div class="card-body">
                    <h3 class="card-title mb-3 text-center">Pay with PayPal</h3><hr>

                    <!-- Alerts -->
                    @if (session('success'))
                        <div class="alert alert-success">{{ session('success') }}</div>
                    @endif
                    @if (session('error'))
                        <div class="alert alert-danger">{{ session('error') }}</div>
                    @endif

                    <p class="text-danger mb-3 fw-semibold">
                        You cannot pay more than <strong>300 USD</strong> at a time from Bangladesh.
                    </p>

                    <!-- Payment Form -->
                    <form action="{{ route('paypal.process') }}" method="POST">
                        @csrf
                        <div class="mb-3">
                            <label for="amount" class="form-label">Enter Amount in EUR</label>
                            <input type="number" name="amount" id="amount"
                                   class="form-control" step="0.01" min="0.01" required>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary btn-lg">
                                Pay with PayPal
                            </button>
                        </div>
                    </form>

                </div>
            </div>

        </div>
    </div>
</div>

<!-- Bootstrap 5 JS (optional for interactions) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
