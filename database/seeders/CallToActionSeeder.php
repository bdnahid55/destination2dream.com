<?php

namespace Database\Seeders;

use App\Models\CallToAction;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CallToActionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        // Create default data
        CallToAction::create([
            'headline' => 'test',
            'button_text' => 'Law Company',
            'link' => 'Best Law service in Garman',
        ]);
    }
}
