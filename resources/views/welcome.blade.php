<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invoice</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
body {
            font-family: 'Arial', sans-serif;
            line-height: 1.5;
        }
        .invoice-header {
            background-color: #f8f9fa;
            padding: 20px;
            border-bottom: 2px solid #dee2e6;
        }
        .invoice-header h1 {
            font-size: 28px;
            font-weight: bold;
            color: #333;
        }
        .invoice-title {
            margin: 30px 0;
            font-size: 24px;
            font-weight: bold;
        }
        .table-bordered {
            border: 2px solid #dee2e6;
        }
        .table-bordered th,
        .table-bordered td {
            border: 2px solid #dee2e6 !important;
        }
        .total {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }
        .footer {
            margin-top: 40px;
            text-align: center;
            color: #888;
            font-size: 14px;
        }
        .highlight {
            background-color: #f8f9fa;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container my-4">
        <!-- Invoice Header -->
        <div class="invoice-header text-center">
            <h1>Your Company Name</h1>
            <p>Address: 123 Your Street, Your City, Your Country</p>
            <p>Email: info@yourcompany.com | Phone: +123-456-7890</p>
        </div>

        <!-- Invoice Details -->
        <div class="row mt-4">
            <div class="col-md-6">
                <h6 class="mb-2">Invoice Details</h6>
                <p><strong>Invoice Number:</strong> #0001</p>
                <p><strong>Invoice Date:</strong> 17-12-2024</p>
                <p><strong>Due Date:</strong> 24-12-2024</p>
            </div>
            <div class="col-md-6 text-md-end">
                <h6 class="mb-2">Customer Details</h6>
                <p><strong>Name:</strong> Nazmul</p>
                <p><strong>Email:</strong> customer@customer.com</p>
            </div>
        </div>

        <!-- Service Details Table -->
        <div class="mt-4">
            <h6 class="invoice-title">Service Details</h6>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Service Name</th>
                        <th>Hourly Rate ($)</th>
                        <th>Total Hours</th>
                        <th>Total Amount ($)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Visa Consult</td>
                        <td>$ 20.00</td>
                        <td>3 hours</td>
                        <td>$ 60.00</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!-- Total Amount -->
        <div class="row mt-4">
            <div class="col-md-6 offset-md-6 text-md-end">
                <p class="total highlight p-2">Total Amount: $ 60.00</p>
            </div>
        </div>

        <!-- Footer -->
        <div class="footer">
            <p>Payment is due by 24-12-2024.</p>
            <p>Thank you for your business!</p>
        </div>
    </div>


	<!--

		Route : Route::get('/generate-invoice', [InvoiceController::class, 'generateInvoice']);



		namespace App\Http\Controllers;

		use Illuminate\Http\Request;
		use PDF;

		class InvoiceController extends Controller
		{
			public function generateInvoice()
			{
				$data = [
					'invoice_number' => 'INV-12345',
					'invoice_date' => now()->format('d-m-Y'),
					'due_date' => now()->addDays(7)->format('d-m-Y'),
					'customer_name' => 'John Doe',
					'customer_email' => 'johndoe@example.com',
					'service_name' => 'Web Development',
					'hourly_rate' => 50,
					'total_hours' => 20,
					'total_amount' => 50 * 20,
				];

				$pdf = PDF::loadView('invoice', $data);
				return $pdf->download('invoice.pdf');
			}
		}




	-->





</body>
</html>
