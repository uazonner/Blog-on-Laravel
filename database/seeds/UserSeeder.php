<?php

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Creates admin a site
        User::create([
            'name' => 'admin',
            'email' => 'uazonner@gmail.com',
            'password' => bcrypt('270688'),
            'remember_token' => str_random(10),
            'active' => '1',
        ]);
    }
}
