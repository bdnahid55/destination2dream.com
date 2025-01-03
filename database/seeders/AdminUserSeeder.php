<?php

namespace Database\Seeders;

use App\Models\Admin;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;


class AdminUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create admin user
        $user = Admin::create([
            'name' => 'Admin',
            'username' => 'Admin',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('black354'),
            'role' => 'superadmin',
            'status' => 'active',
        ]);

        // Update the user_id field with the new user's ID
        $user->user_id = $user->id;
        $user->save();
    }
}
