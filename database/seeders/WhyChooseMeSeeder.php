<?php

namespace Database\Seeders;

use App\Models\WhyChooseMe;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class WhyChooseMeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        // Create default data
        WhyChooseMe::create([
            'title' => 'Why Me ?',

            'short_description' => 'When it comes to legal matters, you need a trusted advisor who not only has the expertise but also genuinely cares about your situation. Here is why I am the right choice for your legal needs:',

            'details' => '<p align="justify">As a solo practitioner. I offer a level of personal attention that larger firms simply can not match. From our first conversation to the final resolution of your case, I will be with you every step of the way, providing tailored solutions that fit your unique circumstances.</p><ol><li>Integrity and Trust</li><li>Personalized Legal Services</li><li>In-Depth Expertise</li><li>Transparent and Honest Communication</li><li>A Client-Centered Approach<br></li></ol><p align="justify">Integrity is the cornerstone of my practice, and I am committed to building long-term relationships based on trust and respect.<br></p>',
        ]);
    }
}
