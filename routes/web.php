<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});
Route::group(['namespace' => 'Post'], function (){
    Route::get('/post', 'IndexController')->name('post.index');
    Route::get('/post/create', 'CreateController')->name('post.create');
    Route::post('/post', 'StoreController')->name('post.store');
    Route::get('/post/{post}', 'ShowController')->name('post.show');
    Route::get('/post/{post}/edit', 'EditController')->name('post.edit');
    Route::patch('/post/{post}', 'UpdateController')->name('post.update');
    Route::delete('/post/{post}', 'DestroyController')->name('post.delete');
});

Route::group(['namespace' => 'Admin', 'prefix' => 'admin'], function (){
    Route::group(['namespace' => 'Post'], function (){
        Route::get('/post', 'IndexController')->middleware('auth')->name('admin.post.index');
        Route::get('/post/create', 'CreateController')->middleware('auth')->name('admin.post.create');
        Route::post('/post', 'StoreController')->middleware('auth')->name('admin.post.store');
        Route::get('/post/{post}', 'ShowController')->middleware('auth')->name('admin.post.show');
        Route::get('/post/{post}/edit', 'EditController')->middleware('auth')->name('admin.post.edit');
        Route::patch('/post/{post}', 'UpdateController')->middleware('auth')->name('admin.post.update');
        Route::delete('/post/{post}', 'DestroyController')->middleware('auth')->name('admin.post.delete');
    });
});



Route::get('/test', 'PostController@showCat');
Route::get('/main', 'MainController@index')->name('main.index');;
Route::get('/about', 'AboutController@index')->name('about.index');;
Route::get('/contacts', 'ContactsController@index')->name('contacts.index');;



Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


