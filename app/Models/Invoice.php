<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    use HasFactory;

    protected $fillable = [
        'client_id',
        'invoice_code',
        'date',
        'service',
        'hour_rate',
        'total_hour',
        'total_amount',
        'status',
    ];
}
