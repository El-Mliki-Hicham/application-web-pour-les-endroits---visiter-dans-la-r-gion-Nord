@extends('pages.principal')
@section('content')
<div id="fb-root"></div>
<!-- <div id="fork-this">
    <a href="https://github.com/brutaldesign/swipebox"></a>
</div> -->
@php
foreach($galerie as $valuee){}
@endphp

<section style="padding-top: 300px ;  background-size:  100% 100%; background-repeat: no-repeat ; background-image: url('{{asset('assets/images/places')}}/{{$valuee->photo_place}} " class="padding trmain-slider"
    id="TripPlanner">  

 
    <div  class="container trtop-baner-content">
       <div  class="row">
            <div class="col-12 col-sm-3 col-md-3 col-lg- col-xl-12">
                <div class="siider-content">
                   
                    <h1 class="wow fadeInDown" data-wow-duration="1.5s" data-wow-delay=".4s">{{$valuee->nom_place}}<br>
                       </h1>
                        
                        <!-- <form class="tr-slider-form wow fadeInUp" data-wow-duration="1.5s" data-wow-delay=".4s">
                            <div class="form-group position-relative mb-0">
                            <button type="submit" class="btn btn-primary ">Search</button>
                            
                        </div>
                    </form> -->
                </div>
            </div>
        </div>
    </div> 
    
   <link rel="stylesheet" href="{{asset('assets/css/meteo.css')}}">
  
</section>

<br><br>
@php
foreach($galerie as $valuee){}
@endphp

<!-- Grid row -->
<div class="row text-center">

    <!-- Grid column -->
    <div class="d-flex justify-content-center">
    <div class="col-lg-7 col-md-12 mb-4  " >

        <div class="card" class="display-3">
            <div class="card-body">
                <h2 class="font-weight-bold deep-orange-lighter-hover mb-3  " >Description</h2>
                <p class="brown-lighter-hover">{{$valuee->description_place}}</p>
            </div>
        </div>

    </div>
    <br><br>

    
    

</div>

<!--Google map-->

<link rel="stylesheet" href="{{asset('assets/css/ifram.css')}}">
<div id="map-container-google-3" class="z-depth-1-half map-container-3">
    <iframe src="https://maps.google.com/maps?q={{$valuee->nom_place}}&amp;t=&amp;z=15&amp;ie=UTF8&amp;iwloc=&amp;output=embed" frameborder="0"
      style="border:0" allowfullscreen></iframe>
  </div>
    <!-- Grid column -->

{{-- end google map --}}
	<section id="exemple" class="container">
		<div class="wrap col-lg-12">
			<div id="try"></div>
			<ul id="box-container">
				<li class="box">
                    

                            
                      
				
<div class="container my-5">
    <div class="row">


      
        
        
        <!--Grid column-->
        @forelse  ($galerie as $value)
        <div class="col-md-6 mb-4">
            
           <div class="bg-image shadow-1-strong rounded">
             <img src="{{asset('assets/galerie')}}/{{$value->photos}}" class="w-100" alt="Sample">
             <div class="mask" style="background-color: rgba(0, 0, 0, 0)">
               <div class="d-flex justify-content-center align-items-center h-100">
                 <p class="text-white mb-0">Can you see me?</p>
               </div>
            </div>
           </div>
        </div>

        
        @empty
            
        @endforelse
        
    </div>
</div>
				</li>
				
			</ul>
		</div>
	
	
        


@endsection
