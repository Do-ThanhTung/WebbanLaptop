<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\VpOrder;

class OrderSeeder extends Seeder
{
    public function run()
    {
        VpOrder::factory()->count(10)->create();
    }
}
