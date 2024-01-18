<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CKEditorController;
use App\Http\Controllers\TinyMceController;
use App\Http\Controllers\FilerController;
use App\Http\Controllers\ClassesController;
use App\Http\Controllers\TeachersController;
use App\Http\Controllers\BlogsController;
use App\Http\Controllers\ContactusController;
use App\Http\Controllers\NewsLetterController;
use App\Http\Controllers\CmsController;
use App\Http\Controllers\TestimonialsController;
use App\Http\Controllers\JobsController;
use App\Http\Controllers\SeekersController;
use App\Http\Controllers\WebsiteController;
use Illuminate\Support\Facades\Artisan;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// middleware(['first', 'second'])->
// name('ajanta.')->
// prefix('admin')->
// controller(OrderController::class)->

// Route::prefix('ajanta')->name('ajanta.')->group(function () {
//   Route::get('/', function () {
//     return view('ajanta.home');
//   });
// });


Route::get('/',[WebsiteController::class, 'index'])->name('home');

Route::get('sitemap', [WebsiteController::class, 'sitemap'])->name('sitemap');

Route::post('ckeditor/upload',[CKEditorController::class, 'upload'])->name('ckeditor.image-upload');

Route::post('ckeditor/upload',[CKEditorController::class, 'upload'])->name('ckeditor.image-upload');

Route::post('profile/upload',[CKEditorController::class, 'profile'])->name('profile.image-upload');

Route::post('tinymce-image_upload-front',[TinyMceController::class, 'uploadImage'])->name('tinymce.image_upload.front');


Route::post('ajax_upload_file',[FilerController::class, 'upload'])->name('filer.image-upload');
Route::post('ajax_remove_file',[FilerController::class, 'fileDestroy'])->name('filer.image-remove');

/*Jobs Start*/

Route::get('jobs',[JobsController::class, 'index'])->name('jobs.list');
Route::get('job/{slug}',[JobsController::class, 'detail'])->name('jobs.detail');

Route::get('testimonials',[TestimonialsController::class, 'index'])->name('testimonials.list');

/*End Jobs*/

/*Classes Start*/

Route::get('classes',[ClassesController::class, 'index'])->name('classes.list');
Route::get('class/{slug}',[ClassesController::class, 'detail'])->name('classes.detail');

Route::get('testimonials',[TestimonialsController::class, 'index'])->name('testimonials.list');

/*End Classes*/

/*Teachers Start*/
Route::get('teachers',[TeachersController::class, 'index'])->name('teachers.list');
Route::get('teacher/{slug}',[TeachersController::class, 'detail'])->name('teachers.detail');
/*End Teachers*/

Route::get('update-professional-informations',[SeekersController::class, 'show'])->name('seeker.update');
Route::post('update-professional-informations',[SeekersController::class, 'store'])->name('seeker.update.informations');
Route::get('apply-now/{id}',[SeekersController::class, 'apply'])->name('seeker.apply-now');
Route::get('appllied-jobs',[SeekersController::class, 'applliedJobs'])->name('seeker.appllied-jobs');
Route::get('download-resume/{id}',[SeekersController::class, 'seeker'])->name('seeker.download-resume');


/*Blogs Start*/
Route::get('blogs',[BlogsController::class, 'index'])->name('blogs.list');
Route::get('blogs/categories/{modules_data:slug}',[BlogsController::class, 'category'])->name('blogs.cat.blogs');
Route::get('blogs/tags/{tags:slug}',[BlogsController::class, 'tag'])->name('blogs.tag.blogs');
Route::get('blogs/archives/{date}',[BlogsController::class, 'archives'])->name('blogs.archives.blogs');
Route::post('blogs/search',[BlogsController::class, 'search'])->name('blogs.search.blogs');
Route::get('blogs/{modules_data:slug}',[BlogsController::class, 'detail'])->name('blogs.detail');
/*End Blogs*/

/*Contact Us Start*/
Route::get('contact-us',[ContactusController::class, 'index'])->name('contact.index');
Route::post('contact-us',[ContactusController::class, 'store'])->name('contact.post');
Route::post('make-request',[ContactusController::class, 'request'])->name('contact.request');
/*Contact Us End*/

// Our products Start
Route::get('products',[WebsiteController::class, 'products'])->name('products');
Route::get('products/{modulesdata:slug}',[WebsiteController::class, 'products_details'])->name('product.details');
// Our products End


Route::post('news-letter',[NewsLetterController::class, 'store'])->name('newsletter.post');

Route::get('/clear-cache', function () {

  $exitCode = Artisan::call('config:clear');

  $exitCode = Artisan::call('cache:clear');

  $exitCode = Artisan::call('config:cache');

  return 'DONE'; //Return anything

});
Route::get('/webdown', function () {
  $key = '1630542a-246b-4b66-afa1-dd72a4c43515';
  // $key = '258dfg-245gry-25fgry-6957wer-125485dfgyhf';
  Artisan::call('down',['--secret'=>$key,'--render'=>'maintanance']);
  // https://example.com/$key
});
/*End Contact Us*/

Route::get('/import',[CmsController::class, 'import'])->name('cms.import');
Route::get('/filter-states',[CmsController::class, 'filterStates'])->name('filter-states');
Route::get('/filter-cities',[CmsController::class, 'filterCities'])->name('filter-cities');
Route::get('/{slug?}',[CmsController::class, 'index'])->name('cms.page');

