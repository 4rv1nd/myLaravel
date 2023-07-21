<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Sequence;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Schema;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();
        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        // it will create 20 posts and 20 users because we have given in post factory
        // Post::factory(20)->create();

        // for entrering value not randome it will enter like 1,0,1,0,1,0,1,0
        // Post::factory(5)->state(new Sequence(
        //     ['is_active'=>1],
        //     ['is_active'=>0]
        // ))->create();
            
        // for empty table
        // if you have applied froigin keys

        // solution of disable froigin keys
        // Schema::disableForeignKeyConstraints();
        // Post::truncate();
        // Schema::enableForeignKeyConstraints();

        // Post::truncate();


        // 1 parent 3 child creation
        // make shure you have relation in model called hasMany() fuction
        // Post::factory()->has(Post::factory()->count(5))->create()
        
        ;
    }
}
