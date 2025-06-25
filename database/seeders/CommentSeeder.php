<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\VpComment;

class CommentSeeder extends Seeder
{
    public function run()
    {
        VpComment::factory()->count(10)->create();
    }
}
