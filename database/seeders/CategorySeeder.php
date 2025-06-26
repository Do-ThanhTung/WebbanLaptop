<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class CategorySeeder extends Seeder
{
    public function run(): void
    {
        // Xóa dữ liệu cũ (không dùng truncate để tránh lỗi khóa ngoại)
        DB::table('vp_categories')->delete();

        DB::table('vp_categories')->insert([
            [
                'cate_id' => 69,
                'cate_name' => 'Apple',
                'cate_slug' => 'apple',
                'created_at' => Carbon::parse('2025-06-15 01:52:48'),
                'updated_at' => Carbon::parse('2025-06-15 01:52:48'),
                'deleted_at' => null
            ],
            [
                'cate_id' => 71,
                'cate_name' => 'Asus',
                'cate_slug' => 'asus',
                'created_at' => Carbon::parse('2025-06-15 01:52:57'),
                'updated_at' => Carbon::parse('2025-06-15 01:52:57'),
                'deleted_at' => null
            ],
            [
                'cate_id' => 72,
                'cate_name' => 'Lenovo',
                'cate_slug' => 'lenovo',
                'created_at' => Carbon::parse('2025-06-15 01:53:00'),
                'updated_at' => Carbon::parse('2025-06-15 01:53:00'),
                'deleted_at' => null
            ],
            [
                'cate_id' => 73,
                'cate_name' => 'Dell',
                'cate_slug' => 'dell',
                'created_at' => Carbon::parse('2025-06-15 01:53:06'),
                'updated_at' => Carbon::parse('2025-06-15 01:53:06'),
                'deleted_at' => null
            ]
        ]);
    }
}
