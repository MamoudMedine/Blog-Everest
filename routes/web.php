<?php

use Illuminate\Support\Facades\Route;


Route::get('/', 'HomeController@index')->name('user_home');
Route::get('single/{id_article}', 'HomeController@single')->name('single_article');
Route::post('single', 'HomeController@add_cmt')->name('make_cmt');

Route::get('login', 'AdminController@login_view')->name('login_view');
Route::post('login', 'AdminController@login')->name('make_login');

Route::group(['middleware'=>'admin_auth'], function (){
    Route::get('admin', 'AdminController@admin_home')->name('admin_home');
    Route::get('admin_single/{id_article}', 'AdminController@single')->name('admin_single');
    Route::post('add_new', 'AdminController@add_new')->name('add_new');
    Route::post('edit_new', 'AdminController@edit_new')->name('edit_new');
    Route::post('del_new', 'AdminController@del_new')->name('del_new');
    Route::get('logout', 'AdminController@logout')->name('logout');
});


