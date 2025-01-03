<?php

namespace Database\Seeders;

use App\Models\Contact;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ContactSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        // Create default data
        Contact::create([
            'email' => 'info@example.com',
            'support_email' => 'contact@example.com',
            'phone' => '+8801738225977',
            'support_phone' => '+8801738225978',
            'address' => '<p>A108 Adam Street<br></p><p>New York, NY 535022</p>',
            'details' => '<h2 align="center" class="">You can contact us by using the form below:</h2>',
        ]);
    }
}
