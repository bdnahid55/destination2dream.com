<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'slug',
        'description',
        'image',
        'details',
        'status',
        'meta_title',
        'meta_description',
        'meta_keywords',
    ];

    public function testimonials()
    {
        return $this->hasMany(Testimonial::class, 'service_id', 'id');
    }
}
