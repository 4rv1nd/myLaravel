<?php

namespace App\Http\Controllers;

use App\Models\Modules;
use App\Models\ModulesData;
use Carbon\Carbon;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;
use stdClass;

use function PHPSTORM_META\elementType;

class WebsiteController extends Controller{
    
    public function index(){        
        $slug = '/';
        $cms = ModulesData::where('slug',$slug)->where('status','active')->firstOrFail();
        return view('welcome',compact('slug', 'cms'));
    }
    public function products(){
        $our_products = Modules::where('slug',Request::segment(1))->where('status','active')->with('modules_data')->firstOrFail();

        $cms = Modules::where('slug','modules-seo-management')->get()->first();
        $cms = ModulesData::where('module_id',$cms->id)->where('title',$our_products->name)->where('status','active')->get()->first();
        if(!$cms){
            $cms = new stdClass();
            $cms->meta_description = "";
            $cms->image = "";
            $cms->keyword = "";
            $cms->meta_title = $our_products->name;
        }
        return view('product.index',compact('our_products','cms'));
    }
    public function products_details(ModulesData $modulesdata){
        $cms = $modulesdata ;
        return view('product.details',compact('modulesdata','cms'));
    }
    // public function contactus(){
    //     dd('AAA');
    //     $cms = Modules::where('slug','modules-seo-management')->get()->first();
    //     $cms = ModulesData::where('module_id',$cms->id)->where('title',$modulesdata->title)->where('status','active')->first();
    //     if(!$cms){
    //         $cms = new stdClass();
    //         $cms->meta_description = $modulesdata->title;
    //         $cms->image = $modulesdata->image;
    //         $cms->keyword = "";
    //         $cms->meta_title = $modulesdata->title;
    //     }
    //     // dd($cms);
    //     return view('product.details',compact('modulesdata','cms'));
    // }
    public function sitemap(){
        Artisan::call('sitemap:generate');
        return redirect('sitemap.xml');
    }
}
