<?php

namespace Database\Seeders;

use App\Models\About;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AboutSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        // Create default data
        About::create([
            'title' => 'I am Arthur',
            'image' => '',
            'subtitle' => 'A consultant at Arthur Company',
            'description' => 'I am here to provide you with reliable and professional legal advice. With years of experience in Law, I have dedicated my career to helping individuals like you navigate legal challenges with confidence. My mission is simple: to offer personalized, clear, and effective legal solutions that cater to your unique needs. Whether you are facing a family dispute, dealing with contracts, or need legal advice in another area, I am here to guide you every step of the way.',
            'extra_details' => '<p>I am here to provide you with reliable and professional legal advice. With years of experience in Law, I have dedicated my career to helping individuals like you navigate legal challenges with confidence. My mission is simple: to offer personalized, clear, and effective legal solutions that cater to your unique needs. Whether you are facing a family dispute, dealing with contracts, or need legal advice in another area, I am here to guide you every step of the way.</p><p>I am here to provide you with reliable and professional legal advice. With years of experience in Law, I have dedicated my career to helping individuals like you navigate legal challenges with confidence. My mission is simple: to offer personalized, clear, and effective legal solutions that cater to your unique needs. Whether you are facing a family dispute, dealing with contracts, or need legal advice in another area, I am here to guide you every step of the way. I am here to provide you with reliable and professional legal advice. With years of experience in Law, I have dedicated my career to helping individuals like you navigate legal challenges with confidence.<br></p>',
        ]);
    }
}
