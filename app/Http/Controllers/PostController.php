<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $post = Post::all();
        return $post;
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }
    public function getPost()
    {
        $arrr = [];

        // using fassaad
        // $arrr['onlyGet'] = DB::table('Posts')->get();
        // $arrr['whereWithOrWhere'] = DB::table('Posts')->where(['id'=>1])->orWhere(['is_publish'=>1])->get();
        // $arrr['onlyGivenReturn'] = DB::table('Posts')->pluck('description');
        // return $arrr;
        
        // custom queries
        // return DB::select('select * from posts where id=?',[3]);
        // return DB::select('insert into posts(title,description,numbers,is_publish,is_active) values(?,?,?,?,?)',['Testttt','dessrriiiptionnnnnnnnn',1351351,0,1]);
        
        
        
    }
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Post::create([
            'title'=>'This is test'    ,
            'description'=>'This is description',
            'numbers'=>5,
            'is_active'=>false,
            'is_publish'=>true
        ]);
        return "Record inserted sucsess";
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    // public function update(Request $request, string $id)
    public function update(Request $request)
    {
        //
        $post = Post::find(6);
        if(!$post){
            return "Record not found";
        }
        $post->update([
            'description'=>'this is test dscription with update'
        ]);
        return "Record update sucsess";
    }

    /**
     * Remove the specified resource from storage.
     */
    // public function destroy(string $id)
    public function destroy()
    {
        //
        $post = Post::find(9);
        if(!$post){
            return "Post Not Found";
        }
        else{
            $post->delete();
            return "post delete sucsess";
        }
        return $post;
    }
}
