@extends('pages.principal')
@section('content')

@php
foreach($places as $value){}

@endphp

<section style="padding-top: 300px ;  background-size:  100% 100%; background-repeat: no-repeat ; background-image: url('{{asset('assets/images/categorie')}}/{{$value->photo_categorie}} " class="padding trmain-slider"
    id="TripPlanner">

    <div class="container trtop-baner-content">
        <div class="row">
            <div class="col-12 col-sm-11 col-md-9 col-lg- col-xl-12">
                <div class="siider-content">

                  @php
                      foreach($places as $value){}

                  @endphp
                
                      
                
                    <h1 class="wow fadeInDown" data-wow-duration="1.5s" data-wow-delay=".4s">
                        {{$value->nom_categorie}}<br>
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
    
</section>
<section class="padding position-relative margin-top parallax parallax-image-2">
    <div class="container">
        <!-- HEADING TITLE -->
        <div class="trheading wow fadeInDown" data-wow-duration="2s" data-wow-delay=".4s">
            <h2 id="categorie">selectionné<br>
                categorie</h2>
        </div>
        <!-- start image content -->

        <!-- start image content -->
        <div class="slider category-slider">
            @forelse ($categories as $value)
            <div class="trCategoryItem">


                <div class="tr-image-class">
                    <a href="/endroit/{{$value->id_categorie}}"> <img
                            src="{{asset('assets/images/categorie')}}/{{$value->photo_categorie}}" class="img-fluid"
                            alt=""></a>
                    <div class="trCategoryButton"><a
                            href="/endroit/{{$value->id_categorie}}">{{$value->nom_categorie}}</a> </div>
                </div>
            </div>
            @empty

            @endforelse
        </div>
    </div>
    <!-- shape-four -->
    <div class="shape-image-four">
        <img src="assets/images/background-shape/round-shape.png" class="img-fluid"
            alt="the background round shape | with Animation">
    </div>
    <!--End shape-four -->
</section>
{{--  --}}
<section class="section section-sm bg-default">
    <div class="container">
        @forelse ($places as $value)
        <div class="row row-sm row-40 row-md-50">

            <div class="col-sm-6 col-md-12 row fadeInRight">
                <!-- Product Big-->


                <article class="product-big">
                    <div class="unit flex-column flex-md-row align-items-md-stretch">
                        <div class="unit-left"><a class="product-big-figure" href="#"><img
                                    src="{{asset('assets/images/places')}}/{{$value->photo_place}}" alt="" width="600"
                                    height="366" /></a></div>
                        <div class="unit-body">
                            <div class="product-big-body">
                                <h5 class="product-big-title"><a href="#">{{$value->nom_place}}</a></h5>
                                <div class="group-sm group-middle justify-content-start">
                                    
                                <p class="product-big-text">{{$value->description_place}}...</p><a class="button button-black-outline button-ujarak"
                                    href="/galeries/{{$value->id_place}}">plus d'informations</a>
                            </div>
                        </div>
                    </div>
                </article>

            </div>




        </div>
        @empty

        @endforelse
    </div>
</section>


@endsection
