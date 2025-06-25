<?php

namespace Database\Seeders;

use App\Models\VpUser;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        VpUser::insert(
            [
                'email'=> 'admin@gmail.com',
                'password'=> bcrypt('12345678'),
                'level'=> 1
            ]
        );
    }
}
