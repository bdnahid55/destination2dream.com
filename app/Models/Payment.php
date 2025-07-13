<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    
protected $fillable = [
    'order_id',
    'payer_id',
    'payer_email',
    'payer_name',
    'currency',
    'amount',
    'status',
    'payment_method',
    'capture_id',
    'raw_response',
];



}
