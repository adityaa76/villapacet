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


Route::get('/',function(){
    return view('auth.login');
})->middleware('guest');

Auth::routes(['register' => true ]);

Route::get('/home', 'HomeController@index')->name('home');


Route::group(['middleware' => ['auth']], function (){

    //master villa

    Route::get('villa', 'Web\VillaController@index')->name('villa.index');
    Route::get('villa/create', 'Web\VillaController@create')->name('villa.create');
    Route::post('villa', 'Web\VillaController@store')->name('villa.store');
    Route::get('villa/{idvilla}', 'Web\VillaController@show')->name('villa.show');
    Route::get('villa/{idvilla}/edit', 'Web\VillaController@edit')->name('villa.edit');
    Route::put('villa/{idvilla}', 'Web\VillaController@update')->name('villa.update');
    Route::delete('villa/{idvilla}', 'Web\VillaController@destroy')->name('villa.destroy');
    
    //master pelanggan

    Route::get('pelanggan', 'Web\PelangganController@index')->name('pelanggan.index');
    Route::get('pelanggan/create', 'Web\PelangganController@create')->name('pelanggan.create');
    Route::post('pelanggan', 'Web\PelangganController@store')->name('pelanggan.store');
    Route::get('pelanggan/{idpelanggan}', 'Web\PelangganController@show')->name('pelanggan.show');
    Route::get('pelanggan/{idpelanggan}/edit', 'Web\PelangganController@edit')->name('pelanggan.edit');
    Route::put('pelanggan/{idpelanggan}', 'Web\PelangganController@update')->name('pelanggan.update');
    Route::delete('pelanggan/{idpelanggan}', 'Web\PelangganController@destroy')->name('pelanggan.destroy');

});