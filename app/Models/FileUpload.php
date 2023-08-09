<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FileUpload extends Model
{
    use HasFactory;
    // public $path = 'assets/images/';
    public $path = 'storage/assets/images/';
    protected $fillable=['image'];
    // protected $fillable=['image','created_at','updated_at'];
    // public $timestamps = true;    
    protected function image(): Attribute {
        return Attribute::make(
            get: fn ($value) => $this->path.$value
        );
    }
}
