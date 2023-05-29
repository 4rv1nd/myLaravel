<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->id();

            // make shure you also added this field in model editable variable
            $table->foreignId('user_id')->constrained();

            $table->string('title');
            $table->text('description');
            $table->bigInteger('numbers');
            $table->softDeletes('deleted_at');
            // $table->softDeletes('deleted_at')->after('numbers');

            // remember always set frist perameter in down method
            // $table->rename('post','posts');

            // addiin collum(alter table)
            $table->boolean('is_publish')->default(false);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Schema::dropIfExists('posts');
        Schema::dropIfExists('posts');
    }
};
