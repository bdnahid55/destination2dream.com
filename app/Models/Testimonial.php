<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Testimonial extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'service_id',
        'image',
        'comment',
        'status',
    ];

    // join query
    public function service()
    {
        return $this->belongsTo(Service::class, 'service_id', 'id');
    }


    // End
}