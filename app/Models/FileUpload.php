<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FileUpload extends Model
{
    use HasFactory;
    // public $path = asset('assets/images/'.$image);
    // public $path = public_path('assets/images/'.$image);
    public $path = 'assets/images/';
    protected $fillable=['image'];
    protected function image(): Attribute {
        return Attribute::make(
            get: fn ($value) => $this->path.$value
        );
    }
}
