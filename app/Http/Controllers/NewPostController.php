<?php

namespace App\Http\Controllers;

use App\Http\Requests\Newpost\CreateRequest;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class NewPostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        // $post = Post::all();
        $post = Post::withTrashed()->simplePaginate(5);
        // $post = Post::onlyTrashed()->simplePaginate(5);
        // $post = Post::simplePaginate(5);
        // $post =[];
        return view('newpost.list',['post'=>$post]);

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
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

        Post::create([
            'title'=>$request->title,
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
    public function show(string $id)
    {
        //
        $post = Post::find($id);
        return view('newpost.show',['post'=>$post]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
        $post = Post::find($id);
        return view('newpost.edit',['post'=>$post]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(CreateRequest $request, string $id)
    {
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
