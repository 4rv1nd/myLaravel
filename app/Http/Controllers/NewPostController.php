<?php

namespace App\Http\Controllers;

use App\Http\Requests\Newpost\CreateRequest;
use App\Http\Requests\Newpost\FileRequest;
use App\Http\Requests\Newpost\UpdateRequest;
use App\Models\FileUpload;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

use function PHPUnit\Framework\fileExists;

class NewPostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // $post = Post::all();
        $post = Post::withTrashed()->simplePaginate(10);
        // $post = Post::onlyTrashed()->simplePaginate(5);
        // $post = Post::simplePaginate(5);
        // $post =[];
        return view('newpost.list',['post'=>$post]);

    }

    public function fileup(Request $request)
    {
        return view('newpost.file');
    }
    public function filesave(FileRequest $request){
        
        //1st method
        // $name = $request->myfile->getClientOriginalName();
        // $path = public_path().'/assets/images/';
        // $request->myfile->move($path, $name);
        // FileUpload::insert(['image'=>]);
        
        //2nd method
        // also run a command  'php artisan storage:link'
        $filename = Storage::disk('public')->put('/assets/images/', $request->myfile);
        $fname = basename($filename);
        FileUpload::insert(['image'=>$fname]);
        // return redirect('newposts/file/view');
        return back();
    }
    public function fileview(){
        $files = FileUpload::all();
        return view('newpost.file_view',['images'=>$files]);
    }
    public function filedelete(Request $request,$id){
        $files = FileUpload::find($id);
        if(fileExists($files->image)){
            unlink($files->image);
            $files->delete();
        }
        return back();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // $is_mesage = $request->session()->has('msg');
        return view('newpost.form');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function softdelete(Request $request, $id){
        $post = Post::onlyTrashed()->find($id);
        if(!$post){
            Session::flash('msg','No record Found');
        }
        else{
            $post->onlyTrashed()->update(['deleted_at'=>null]);
            Session::flash('msg','record Recovered');
        }
        return to_route('newposts.index');
    }

    public function store(CreateRequest $request)
    {
        //
        // get all variables
        // return $request->all();

        // $request->validate([
        //     'title'=>'required',
        //     'description'=>'required',
        // ]);

        // if table column and client form variables are same
        // Post::create($request->all());

        // use Illuminate\Support\Str;
        $slug = Str::slug($request->title);

        Post::create([
            'title'=>$request->title,
            'slug'=>$slug,
            'description'=>$request->description,
            'user_id'=>1,
            'numbers'=>$request->numbers,
            'is_publish'=>$request->is_publish,
            'is_active'=>$request->is_active
        ]);

        $request->session()->flash('msg','New post created');
        // return redirect()->route('newposts.create'); // by route
        return to_route('newposts.create'); // by route
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id){
        $post = Post::find($id);
        return view('newpost.show',['post'=>$post]);
    }
    /**
     * Show the form for editing the specified resource.
     */
    public function sluggg(Post $post){
        // $post->each(function($file){
        //     print_r($file);
        //     echo "<br>";
        // });
        return view('newpost.show',['post'=>$post]);
    }
    public function edit(string $id){
        $post = Post::find($id);
        return view('newpost.edit',['post'=>$post]);
    }

    public function slugedit(Post $post){
        return view('newpost.slugedit',compact('post'));
    }
    public function slugupdate(UpdateRequest $request, Post $post){
        $slug = Str::slug($request->title);
        $up_data = [
            'title'=>$request->title,
            'slug'=>$slug,
            'description'=>$request->description,
            'numbers'=>$request->numbers,
            'is_publish'=>$request->is_publish,
            'is_active'=>$request->is_active
        ];        
        if($post->update($up_data)){
            $request->session()->flash('msg',"Updated");
            return to_route('newposts.index');
        }
        $request->session()->flash('msg',"Not updated");
        return back();
    }
    public function errors(){
        // abort(401);
        // abort(404);

        // go to see the resource 403 blade file
        // abort(403,'User is no able to perform this action');

        abort_if(6==6,'404','User is no able to perform this action');
        // abort_unless(6==6,'404','User is no able to perform this action');
    }
    public function slugdelete(Request $request, Post $post){
        if($post->delete()){
            $request->session()->flash('msg',"Slug deleted");
        }
        else{
            $request->session()->flash('msg',"Slug not deleted");
        }
        return back();
    }
    public function slugrecover(Request $request, Post $post){
        if($post->update(['deleted_at'=>null])){
            $request->session()->flash('msg',"Slug restored");
        }
        else{
            $request->session()->flash('msg',"Slug not restored");
        }
        return back();
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(CreateRequest $request, string $id){
        //
        // return $request->all();

        // $request->validate([
        //     'title'=>'required',
        //     'description'=>'required'
        // ]);

        $post = Post::find($id);
        if(!$post){
            abort(404);
        }
        $post->update($request->all());
        $request->session()->flash('msg',"record update");
        return to_route('newposts.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $post = Post::find($id);
        if(!$post){
            Session::flash('msg','No record Found');
        }
        else{
            $post->delete();
            Session::flash('msg','record Deleted');
        }
        return to_route('newposts.index');
    }
    public function active(string $id)
    {
        $post = Post::find($id);
        if(!$post){
            Session::flash('msg','No record Found');
        }
        else{
            if($post->is_active){
                $post->update(['is_active'=>0]);
            }
            else{
                $post->update(['is_active'=>1]);
            }
            Session::flash('msg','record Updated');
        }
        return to_route('newposts.index');
    }
    public function publish(string $id)
    {
        $post = Post::find($id);
        if(!$post){
            Session::flash('msg','No record Found');
        }
        else{
            if($post->is_publish){
                $post->update(['is_publish'=>0]);
            }
            else{
                $post->update(['is_publish'=>1]);
            }
            Session::flash('msg','record Updated');
        }
        return to_route('newposts.index');
    }
}
