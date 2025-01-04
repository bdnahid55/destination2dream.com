<?php

namespace Database\Seeders;

use App\Models\WebsiteSetting;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class WebsiteSettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        // Create default website settings
        WebsiteSetting::create([
            'company_logo' => '',
            'favicon' => '',
            'company_name' => 'Law Company',
            'company_slogan' => 'Best Law service in Garman',
            'company_description' => 'Best Law service in Garman',
            'company_address' => 'Dhaka, Garman',
            'phone' => '01738225977',
            'support_phone' => '+01738225977',
            'email' => 'contact@yourmail.com',
            'copyright_text' => 'Copyright &copy;  Law Company 2024 All rights reserved',
            'facebook_url' => 'https://www.facebook.com/',
            'twitter_url' => 'https://x.com/',
            'youtube_url' => 'https://www.youtube.com/',
            'instagram_url' => 'https://www.instagram.com/',
            'android_app_url' => 'https://play.google.com/store/apps',
            'meta_title' => 'Law Company Home',
            'meta_description' => 'Law Company Descriprion',
            'meta_keywords' => 'Law Company, Law,law-company',
        ]);
    }
}
