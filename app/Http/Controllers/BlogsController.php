<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Models\Modules;
use App\Models\ModulesData;
use App\Models\Tags;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Request as FacadesRequest;
// use Illuminate\Support\Facades\Request;

use stdClass;

class BlogsController extends Controller
{
    public $total = 1;

    public function index(){

        $blog = Modules::where('slug',FacadesRequest::segment(1))->where('is_preview',1)->where('status','active')->firstOrFail();

        $blogs_item = ModulesData::where('module_id',$blog->id)->where('status','active')->paginate($this->total);

        $cat = Modules::where('slug','blog-categories')->where('status','active')->with(
                ['modules_data'  => function ($query) {   return $query->select('modules_data.*')->where('status','active'); },]
            )->get()->firstOrFail();
        
        $tags = Tags::where('status','active')->get();

        $archives = ModulesData::select('created_at')->where('module_id',9)->where('status','active')->orderBy('created_at')->get()->groupBy(function($data) {
            return $data->created_at->format('Y-m');
        });

        $cms = Modules::where('slug','modules-seo-management')->with('modules_data')->get()->first();
        $cms = ModulesData::where('module_id',$cms->id)->where('title',$blog->name)->where('status','active')->get()->first();

        if(!$cms){
            $cms = new stdClass();
            $cms->meta_description = "Not added in seo page";
            $cms->title = FacadesRequest::segment(1);
            $cms->keyword = "Not added in seo page";
            $cms->meta_title = "Not added in seo page";
        }
        return view('blogs.list',compact('blogs_item','cms','cat','tags','archives'));
    }   
    public function category(ModulesData $modules_data){
        $blogs_item = ModulesData::where('category_ids', $modules_data->id)->where('status','active')->paginate($this->total);
        $cms = $modules_data;

        $cat = Modules::where('slug','blog-categories')->where('status','active')->with(
            ['modules_data'  => function ($query) {   return $query->select('modules_data.*')->where('status','active'); },]
        )->get()->firstOrFail();

        $archives = ModulesData::select('created_at')->where('module_id',9)->where('status','active')->orderBy('created_at')->get()->groupBy(function($data) {
            return $data->created_at->format('Y-m');
        });

        $tags = Tags::where('status','active')->get();

        $blogs_recent = ModulesData::where('module_id',9)->where('status','active')->orderBy('created_at','desc')->take(3)->get();

    	return view('blogs.cat.list',compact('cms','blogs_item','tags','cat','archives','blogs_recent'));
    }
    public function tag(Tags $tags){
    	$blogs_item = ModulesData::where('tag_ids', 'like', '%,'.$tags->id)->orWhere('tag_ids', 'like', $tags->id)->where('status','active')->paginate($this->total);

        $cms = Modules::where('slug','modules-seo-management')->with('modules_data')->get()->first();
        $cms = ModulesData::where('module_id',$cms->id)->where('title',FacadesRequest::segment(2))->where('status','active')->get()->first();
        if(!$cms){
            $cms = new stdClass();
            $cms->meta_description = "";
            $cms->image = "";
            $cms->title = FacadesRequest::segment(1);
            $cms->keyword = "";
            $cms->meta_title = "";
        }

        $cat = Modules::where('slug','blog-categories')->where('status','active')->with(
            ['modules_data'  => function ($query) {   return $query->select('modules_data.*')->where('status','active'); },]
        )->get()->firstOrFail();

        $archives = ModulesData::select('created_at')->where('module_id',9)->where('status','active')->orderBy('created_at')->get()->groupBy(function($data) {
            return $data->created_at->format('Y-m');
        });

        $tags = Tags::where('status','active')->get();

        $blogs_recent = ModulesData::where('module_id',9)->where('status','active')->orderBy('created_at','desc')->take(3)->get();

    	return view('blogs.tag.list',compact('cms','blogs_item','tags','cat','archives','blogs_recent'));
    }
    public function archives($date){
    	$blogs_item = ModulesData::where('module_id', 9)->where('created_at', 'like', $date.'%')->where('status','active')->paginate($this->total);
        if($blogs_item->count()==0){
            abort(404);
        }

        $cms = Modules::where('slug','modules-seo-management')->with('modules_data')->get()->first();
        $cms = ModulesData::where('module_id',$cms->id)->where('title',FacadesRequest::segment(2))->where('status','active')->get()->first();
        if(!$cms){
            $cms = new stdClass();
            $cms->meta_description = "";
            $cms->image = "";
            $cms->title = FacadesRequest::segment(1);
            $cms->keyword = "";
            $cms->meta_title = "";
        }

        $cat = Modules::where('slug','blog-categories')->where('status','active')->with(
            ['modules_data'  => function ($query) {   return $query->select('modules_data.*')->where('status','active'); },]
        )->get()->firstOrFail();

        $archives = ModulesData::select('created_at')->where('module_id',9)->where('status','active')->orderBy('created_at')->get()->groupBy(function($data) {
            return $data->created_at->format('Y-m');
        });

        $tags = Tags::where('status','active')->get();

        $blogs_recent = ModulesData::where('module_id',9)->where('status','active')->orderBy('created_at','desc')->take(3)->get();

    	return view('blogs.archives.list',compact('cms','blogs_item','tags','cat','archives','blogs_recent'));
    }
    public function search(Request $request){
    	$blogs_item = ModulesData::where('module_id', 9)->whereRaw('UPPER(title) LIKE ?', ['%' . strtoupper($request->keyword) . '%'])->where('status','active')->paginate($this->total);

        if($blogs_item->count()==0){
            abort(404);
        }

        $cms = Modules::where('slug','modules-seo-management')->with('modules_data')->get()->first();
        $cms = ModulesData::where('module_id',$cms->id)->where('title',FacadesRequest::segment(2))->where('status','active')->get()->first();
        if(!$cms){
            $cms = new stdClass();
            $cms->meta_description = "";
            $cms->image = "";
            $cms->title = FacadesRequest::segment(1);
            $cms->keyword = "";
            $cms->meta_title = "";
        }

        $cat = Modules::where('slug','blog-categories')->where('status','active')->with(
            ['modules_data'  => function ($query) {   return $query->select('modules_data.*')->where('status','active'); },]
        )->get()->firstOrFail();

        $archives = ModulesData::select('created_at')->where('module_id',9)->where('status','active')->orderBy('created_at')->get()->groupBy(function($data) {
            return $data->created_at->format('Y-m');
        });

        $tags = Tags::where('status','active')->get();

        $blogs_recent = ModulesData::where('module_id',9)->where('status','active')->orderBy('created_at','desc')->take(3)->get();

    	return view('blogs.archives.list',compact('cms','blogs_item','tags','cat','archives','blogs_recent'));
    }
    public function detail(ModulesData $modules_data){
        $cms = $modules_data;

        $cat = Modules::where('slug','blog-categories')->where('status','active')->with(
            ['modules_data'  => function ($query) {   return $query->select('modules_data.*')->where('status','active'); },]
        )->get()->firstOrFail();

        $archives = ModulesData::select('created_at')->where('module_id',9)->where('status','active')->orderBy('created_at')->get()->groupBy(function($data) {
            return $data->created_at->format('Y-m');
        });

        $tags = Tags::where('status','active')->get();

        $blogs_recent = ModulesData::where('module_id',9)->where('status','active')->orderBy('created_at','desc')->take(3)->get();
            
        return view('blogs.show',compact('cms','tags','cat','archives','blogs_recent'));
    }

}
