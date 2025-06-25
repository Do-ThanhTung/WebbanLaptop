<?php

namespace Database\Factories;

use App\Models\VpComment;
use Illuminate\Database\Eloquent\Factories\Factory;

class VpCommentFactory extends Factory
{
    protected $model = VpComment::class;

    public function definition(): array
    {
        return [
            'com_name' => $this->faker->name(),
            'com_email' => $this->faker->safeEmail(),
            'com_content' => $this->faker->sentence(10),
            'com_status' => 1,
            'com_product' => 1, // hoặc random prod_id có sẵn
            'user_id' => 1, // hoặc random user id có sẵn
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
