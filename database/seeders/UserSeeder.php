<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // User::create([
        //     'username' => 'sedanight',
        //     'password' => bcrypt('password'),
        //     'nama' => 'udin',
        //     'alamat' => 'street food jaya berbakti',
        //     'no_telp' => '085238889875',
        //     'no_sim' => '3214567'
        // ]);

        User::factory(25)->create();
    }
}
