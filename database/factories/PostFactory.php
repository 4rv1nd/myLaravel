<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title'=>fake()->name(),
            'description'=>fake()->sentence(),
            'numbers'=>rand(0,5),
            'is_active'=>rand(0,1),
            'is_publish'=> rand(0,1),
            'user_id'=> User::factory()
        ];
    }
}
