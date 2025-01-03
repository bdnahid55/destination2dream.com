<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payments extends Model
{
    use HasFactory;

    protected $fillable = [
        'invoice_id',
        'transaction_id',
        'amount_paid',
        'payment_date',
        'payment_status',
        'payment_method',
    ];
}
