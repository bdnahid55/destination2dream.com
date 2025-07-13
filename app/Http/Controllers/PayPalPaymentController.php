<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Srmklive\PayPal\Services\PayPal as PayPalClient;
use App\Models\Payment;

class PayPalPaymentController extends Controller
{
    


    /**
     * Show the payment page with the PayPal button.
     */
    public function createTransaction()
    {
        return view('pay');
    }

    /**
     * Process the PayPal payment request and redirect to PayPal.
     */
    public function processTransaction(Request $request)
    {
        $request->validate([
            'amount' => 'required|numeric|min:0.01',
        ]);

        $amount = number_format($request->input('amount'), 2, '.', '');

        $provider = new PayPalClient;
        $provider->setApiCredentials(config('paypal'));
        $provider->getAccessToken();

        $response = $provider->createOrder([
            "intent" => "CAPTURE",
            "application_context" => [
                "return_url" => route('paypal.success'),
                "cancel_url" => route('paypal.cancel'),
            ],
            "purchase_units" => [
                [
                    "amount" => [
                        "currency_code" => "EUR",
                        "value" => $amount
                    ]
                ]
            ]
        ]);

        if (isset($response['id']) && $response['status'] === 'CREATED') {
            foreach ($response['links'] as $link) {
                if ($link['rel'] === 'approve') {
                    return redirect()->away($link['href']);
                }
            }
        }

        return redirect()->route('paypal.cancel')->with('error', 'Something went wrong. Please try again.');
    }



    /**
     * Handle the success callback and save payment info.
     */
    public function successTransaction(Request $request)
    {
        $provider = new PayPalClient;
        $provider->setApiCredentials(config('paypal'));
        $provider->getAccessToken();

        $response = $provider->capturePaymentOrder($request->get('token'));

        if (isset($response['status']) && $response['status'] === 'COMPLETED') {
            $order = $response['purchase_units'][0];
            $payer = $response['payer'];

            Payment::create([
                'order_id'     => $response['id'],
                'payer_id'     => $payer['payer_id'] ?? null,
                'payer_email'  => $payer['email_address'] ?? null,
                'payer_name'   => ($payer['name']['given_name'] ?? '') . ' ' . ($payer['name']['surname'] ?? ''),
                'currency'     => $order['payments']['captures'][0]['amount']['currency_code'],
                'amount'       => $order['payments']['captures'][0]['amount']['value'],
                'status'       => $response['status'],
                'payment_method' => 'paypal',
                'capture_id'   => $order['payments']['captures'][0]['id'] ?? null,
                'raw_response' => json_encode($response),
            ]);

            return redirect()->route('payment')->with('success', 'Payment successful. Transaction saved.');
        }

        return redirect()->route('payment')->with('error', 'Transaction failed.');
    }




    /**
     * Handle the cancellation callback.
     */
    public function cancelTransaction()
    {
        return redirect()->route('payment')->with('error', 'Transaction cancelled.');
    }


}
