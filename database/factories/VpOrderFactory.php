<?php

namespace Database\Factories;

use App\Models\VpOrder;
use Illuminate\Database\Eloquent\Factories\Factory;

class VpOrderFactory extends Factory
{
    protected $model = VpOrder::class;

    public function definition(): array
    {
        return [
            'name' => $this->faker->name(),
            'email' => $this->faker->safeEmail(),
            'phone' => $this->faker->phoneNumber(),
            'address' => $this->faker->address(),
            'total_price' => $this->faker->numberBetween(1000000, 50000000),
            'total_products' => $this->faker->numberBetween(1, 10),
            'placed_order_date' => $this->faker->date('Y-m-d'),
            'order_status' => $this->faker->randomElement(['Chờ xác nhận', 'Đã xác nhận', 'Đã giao', 'Đã hủy']),
            'user_id' => 1, // hoặc random user id có sẵn
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
