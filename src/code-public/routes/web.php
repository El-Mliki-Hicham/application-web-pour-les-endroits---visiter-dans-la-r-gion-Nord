<?php

use App\Http\Controllers\CategorieController;
use App\Http\Controllers\placesController;
use App\Http\Controllers\tempuratureController;
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

// Route::get('/meteo', function (){
//     return view('pages.meteo');
// });


    route::get('/index',[CategorieController::class,'afficher_categories_index'])->name('index');
    // route::get('/galeries',[CategorieController::class,'afficher_categories_gallery']);
    route::get('/endroit/{id}',[placesController::class,'afficher_places_id']);
    route::get('/galeries/{id}',[placesController::class,'afficher_places_gallery']);
    
    
    // route::get('/index',[tempuratureController::class,'fetch_API'])->name('index');




