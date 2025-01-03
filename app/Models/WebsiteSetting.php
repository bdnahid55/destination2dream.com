<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WebsiteSetting extends Model
{
    use HasFactory;

    protected $fillable = [
        'company_logo',
        'company_name',
        'company_slogan',
        'company_description',
        'company_address',
        'phone',
        'support_phone',
        'email',
        'copyright_text',
        'facebook_url',
        'twitter_url',
        'youtube_url',
        'instagram_url',
        'android_app_url',
        'meta_title',
        'meta_description',
        'meta_keywords',
    ];
}
