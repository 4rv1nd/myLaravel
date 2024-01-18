<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Sitemap\Contracts\Sitemapable;
use Spatie\Sitemap\Tags\Url;

class ModulesData extends Model implements Sitemapable
{
    protected $table = 'modules_data';

    public function results()
    {
        return $this->hasMany('App\Models\ModulesData','category');
    }

    public function count()
    {
        return $this->results()->count();
    }

    public function toSitemapTag(): Url | string | array{

        switch($this->module_id){
            case 6:{
                return url($this->slug);
            }
            case 8:{
                return route('blogs.cat.blogs',$this->slug);
            }
            case 9:{
                return route('blogs.detail',$this->slug);
            }
            case 29:{
                return route('product.details',$this->slug);
            }
        }
    }
}
