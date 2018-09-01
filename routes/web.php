<?php

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

Route::get('/', "HomeController@index");




Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');



Route::get('/admin', "AdminController@index");
Route::get('/admin/posts', "AdminController@posts");
Route::get('/admin/posts/{id}', "AdminController@PostApove");
Route::get('/admin/setadmin/{id}', "AdminController@SetAdmin");
Route::get('/admin/removeadmin/{id}', "AdminController@RemoveAdmin");

Route::get('/upload', "Usercontroller@index");
Route::get('/myuploads', "Usercontroller@uploads");
Route::post('/store', "Usercontroller@store")->name('usercontroller.store');
