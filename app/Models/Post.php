<?php

namespace App\Models;

use Illuminate\Contracts\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable=['title','description','user_id','is_active','is_publish','numbers','deleted_at','slug'];

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

    // for encryption the field
    // protected $casts = ['description'=>'encrypted'];

    // for global scoping (if you want to get only published post for all queries without typing)
    // public static function booted(){
    //     static::addGlobalScope('active',function(Builder $builder){
    //         $builder->where('is_publish',1);
    //     });
    // }

    // for slug
    public function getRouteKeyName(){
        return 'slug';
    }
}
