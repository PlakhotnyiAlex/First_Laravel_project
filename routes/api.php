<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {

    Route::post('login', 'AuthController@login');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');

});
Route::group(['namespace' => 'Api', 'middleware' => 'jwt.auth',], function (){
    Route::group(['namespace' => 'Post'], function (){
        Route::get('/post', 'IndexController')->name('api.post.index');
        Route::post('/post', 'StoreController')->name('api.post.store');
        Route::get('/post/{post}', 'ShowController')->name('api.post.show');
        Route::patch('/post/{post}', 'UpdateController')->name('api.post.update');
        Route::delete('/post/{post}', 'DestroyController')->name('api.post.delete');
    });
});
