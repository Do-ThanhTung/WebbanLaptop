<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\VpProduct;

class ProductSeeder extends Seeder
{
    public function run()
    {
        VpProduct::factory()->count(10)->create();
    }
}
