<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable=['title','description','user_id','is_active','is_publish','numbers','deleted_at'];

    // public function user(){
    //     return $this->belongsTo(User::class);
    // }
    // public function commnent(){
    //     return $this->hasManyThrough(Post::class);
    // }

    // before laravel 9
    // public function getTitleAttribute($title){
    //     return strtoupper($title);
    // }
    // public function setTitleAttribute($value){
    //     return $this->attributes['title'] = strtoupper($value);
    // }

    // after laravel 9
    // protected function title(): Attribute {
    //     return Attribute::make(
    //         get: fn ($value) => strtoupper($value),
    //         set: fn ($value) => strtoupper($value)
    //     );
    // }

    protected $casts = [
        'description'=>'encrypted'
    ];
}
