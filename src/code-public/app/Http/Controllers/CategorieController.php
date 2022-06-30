<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class CategorieController extends Controller
{
    
  function afficher_categories_index(){

    $touts_categories=  DB::table('categories')
      ->select("*")
      ->get();
    $temperature_haute=DB::table('categories')
      ->select("*")
    ->whereIn('id_categorie', [1, 2])
    ->get();
    $temperature_basse=  DB::table('categories')
      ->select("*")
      ->whereIn('id_categorie', [2,3,4])
      ->get();
    $data =Http::get("https://api.openweathermap.org/data/2.5/weather?q=TANGER&appid=0bd0cd1e7d8ab7a578a5a4d28a57d45b&units=metric")->json();



    return view("pages.index",

    [
      "touts_categories"=>$touts_categories,
      'temperature_haute'=>$temperature_haute,
      'temperature_basse'=>$temperature_basse,
      'temp'=>$data['main']['temp'],
      'description'=>$data['weather'],
      "name" =>$data['name'],
      "wind"=>$data['wind']['speed'],
      'humidity'=>$data['main']['humidity']

      ]


    );



    }

    function afficher_categories_endroit(){

        $categories=  DB::table('categories')
          ->select("*")
          ->get();
         
          return view("pages.endroits",compact("categories"));
      }
    function afficher_categories_gallery(){

        $categories=  DB::table('categories')
          ->select("*")
          ->get();
         
          return view("pages.galeries",compact("categories"));
      }

      function afficher_categories_meteo(){
        $meteo=DB::table('categories')
        ->select("*")
        ->get();
        $data =Http::get("https://api.openweathermap.org/data/2.5/weather?q=TANGER&appid=0bd0cd1e7d8ab7a578a5a4d28a57d45b&units=metric")->json();

        return view('pages.meteo',
      
        [
          'meteo'=>$meteo,
          'temp'=>$data['main']['temp'],
          'description'=>$data['weather'],
          "name" =>$data['name'],
          "wind"=>$data['wind']['speed']
          ]
      
      
      
      );
      }
      
         
    
}
