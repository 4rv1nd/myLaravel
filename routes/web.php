<?php

use App\Http\Controllers\DatabaseController;
use App\Http\Controllers\NewPostController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PostController;
use App\Models\Post;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/', function () {
    dd("A");
    // return view('welcome');
});
Route::get('/clear', function () {
    Artisan::call('cache:clear');
    Artisan::call('route:cache');
    Artisan::call('config:cache');
    Artisan::call('view:clear');
    echo "cache clerared";
});


Route::get('/docs/users', function () {
    return "User List";
});
Route::get('/docs/user/{id}', function (String $id) {
    return "User ".$id;
});
Route::get('/docs/post/{id}/comment/{comment}',function(String $id, String $comment){
    return "Post id: ".$id." Comment id:".$comment;
});
Route::get('/docs/req/{id}',function(Request $req, string $id){
    return "Request ".$id;
});
Route::get('/docs/optional/{id?}',function(string $id="0123456789"){
    return "Option ".$id;
});


Route::get('/docs/welcome', function () {
    return view('welcome1');
});

Route::get('/greeting',function(){
    $greeting = "welcome";
    $name = "test";

    return view('greeting',['greeting'=>$greeting,'name'=>$name]);
    // return view('greeting',compact('greeting','name'));
    // return view('greeting')->with('greeting',$greeting);
});

Route::get('/profilePage',function(){
    return view('profile.page');
});

Route::get('/test',function(){
    return view('test');
});

Route::get('/test1',function(){
    return view('test1');
});

Route::get('/user',function(){
    return view('user');
});

// URL vs Route
Route::get('routeTest1',function(){
    return "routeTest 1";
});
Route::get('routeTest2',function(){
    return "routeTest 2";
})->name('routeTest.route');

Route::get('/users',[UserController::class,'index']);
Route::get('/users/show/{id}',[UserController::class,'show']);

// Route::resource('posts',PostController::class);
Route::get('posts',[PostController::class,'index']);
Route::get('posts/store',[PostController::class,'store']);
Route::get('/posts/update',[PostController::class,'update']);
Route::get('/posts/delete',[PostController::class,'destroy']);

// everything in one controller
Route::resource('newposts',NewPostController::class);
Route::get('newposts/file/upload',[NewPostController::class,'fileup'])->name('newposts.fileup');
Route::post('newposts/file/save',[NewPostController::class,'filesave'])->name('newposts.filesave');
Route::get('newposts/file/view',[NewPostController::class,'fileview'])->name('newposts.fileview');
Route::get('newposts/active/{id}',[NewPostController::class,'active'])->name('newposts.active');
Route::get('newposts/publish/{id}',[NewPostController::class,'publish'])->name('newposts.publish');
Route::get('newposts/softdelete/{id}',[NewPostController::class,'softdelete'])->name('newposts.softdelete');

Route::get('get/post/queries',[PostController::class,'getPost'])->name('get.post');

Route::get('queries/friginkey',function(){
    // if you have only user id of user and you want to get a single post of that user
    // $data = User::with('post')->first();

    // $data = User::first();
    // if($data->post){
    //     echo $data->post->title;
    // }
    
    // if you have user id from post table and you want to get details from user table 
    // return Post::first()->user;
    
    // if you have only user id of user and you want to get a all post of that user
    // return User::first()->posts;

    // return User::first()->postComment;
    // return User::first()->postComments;
    
    // $uu = User::first();
    // $pp = Post::first();
    // return $uu->roles()->attach($pp);
    // return $uu->roles;
    // return $uu->roles()->detach($pp);

    $role = Role::first();
    $user = User::first();
    $user->roles()->sync($role->id);
    // $user->roles()->sync(1);
});

// -----------------------------------------
// laravel factories

// -----------------------------------------

// session by fassad
// Route::get('sessionput',function(){
//     Session::put('testsession','this is test session');
//     return "new session created";
// });
// Route::get('sessionget',function(){
//     if(Session::has('testsession')){
//         return Session::get('testsession');
//     }
//     else{
//         return "no session created";
//     }
// });
// Route::get('sessiondelete',function(){
//     Session::flush();
//     return "session deleted";
// });
// by class (use this for better perfomence)
Route::get('sessionput',function(Request $request){
    $request->session()->put('testsession','this is test session');
    return "new session created";
});
Route::get('sessionget',function(Request $request){
    if($request->session()->has('testsession')){
        return $request->session()->get('testsession');
    }
    else{
        return "no session";
    }
});
Route::get('sessiontempdelete',function(Request $request){
    $request->session()->flush();
    return "session deleted";
});
// temporery session
Route::get('sessiontempput',function(Request $request){
    $request->session()->flash('testsession','this is test session');
    return "new session created";
});
Route::get('sessiontempget',function(Request $request){
    if($request->session()->has('testsession')){
        return $request->session()->get('testsession');
    }
    else{
        return "no session";
    }
});

// database
// Route::get('db/check',[DatabaseController::class,'check']);
Route::get('db/check',function(){
    try{
        DB::connection()->getPdo();
        echo "Conneted to database.......";
    }
    catch(\Exception $ex){
        echo $ex;
    }
});

// Route::get('db/insert',[DatabaseController::class],'insert');
Route::get('db/insert',function(){
    Post::create([
        'title'=>'This is test'    ,
        'description'=>'This is description',
        'numbers'=>456543,
        'is_active'=>false,
        'is_publish'=>true
    ]);  
    return "Record Inserted";
});

Route::get('db/getAll',function(){
    $posts = Post::all();
    return $posts;
});
Route::get('db/get/{id}',function($id = 0){
    // this is mostly used for api's
    // $post = Post::findOrFail($id);

    $post = Post::find($id);
    return ($post)?1:0;
});
Route::get('db/get/column/{column}/{id}',function($column = "", $id = 0){
    $post = Post::where([$column=>$id])->get();    
    return $post;
});

Route::get('db/update/{id}',function($id=0){
    $post = Post::find($id);

    // if we have multiple records in result it will give us fris one from result
    // $post = Post::find($id)->first();

    if(!$post){
        return "Record not found";
    }
    $post->update([
        'description'=>'this is test dscription with update'
    ]);
    return "Record update sucsess";
});

Route::get('db/delete/{id}',function($id=0){
    $post = Post::find($id);
    if(!$post){
        return "Post Not Found";
    }
    else{
        $post->delete();
        return "post delete sucsess";
    }
    return $post;
});