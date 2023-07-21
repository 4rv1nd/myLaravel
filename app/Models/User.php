<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    // public function post(){
    //     // return $this->hasOne(Post::class);
    //     // return $this->hasOne(Post::class)->where('title','56')->withDefault(['title'=>'laravel Post']);
    //     return $this->hasOne(Post::class)->withDefault(['title'=>'laravel Post']);
    // }
    // public function posts(){
    //     // return $this->hasMany(Post::class)->where('title','456456');
    //     return $this->hasMany(Post::class);
    // }
    // public function postComment(){
    //     return $this->hasOneThrough(Comments::class, Post::class);
    // }
    // public function postComments(){
    //     return $this->hasManyThrough(Comments::class, Post::class);
    // }

    public function roles(){
        return $this->belongsToMany(Role::class);
    }
}
