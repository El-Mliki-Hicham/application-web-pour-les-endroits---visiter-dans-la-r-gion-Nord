@extends('pages.principal')
@section('content')


<section style="background-image: url('assets/images/img-about/17.jpg');padding-top:300px;"
    class="padding trmain-slider" id="TripPlanner">
    <div class="container trtop-baner-content">
        <div class="row">
            <div class="col-12 col-sm-11 col-md-9 col-lg- col-xl-12">
                <div class="siider-content">
                    <h1 class="wow fadeInDown" data-wow-duration="1.5s" data-wow-delay=".4s">les suggestions<br>
                        des endroits touristiques à Tanger.</h1>
                   
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
</div>



</section>

<!--start weather-->
<section>
    <div class="container  py-5 h-100">

        <div class="row justify-content-center">
            <div class="col-md-4 col-lg-6 col-xl-8">

                <div class="card" style="color: #ffffff; border-radius: 35px; background: linear-gradient(rgb(57, 57, 114), rgb(171, 194, 218));">
                    <div class="card-body p-4">

                        <div class="d-flex">
                            <h6 class="flex-grow-1">{{$name}}</h6>
                            <h6>@php echo date("Y-m-d");
                                @endphp</h6>
                        </div>

                        <div class="d-flex flex-column text-center mt-5 mb-4">
                            <h6 class="display-4 mb-0 font-weight-bold" style="color: #ffffff;"> {{$temp}}&deg;C </h6>
                            <span class="small" style="color: #ffffff">
                                @forelse ($description as $value)
                                {{$value['description']}}
                                @empty
                                @endforelse
                            </span>
                        </div>

                        <div class="d-flex align-items-center">
                            <div class="flex-grow-1" style="font-size: 1rem;">
                                <div><i class="fas fa-wind fa-fw" style="color: #ffffff;"></i> <span class="ms-1"
                                        style="color: #ffffff;"> {{$wind}} km/h
                                    </span></div>
                                <div><i class="fas fa-tint fa-fw" style="color: #f7f7f7;"></i> <span class="ms-1"
                                        style="color: #ffffff;"> {{$humidity}}% </span>
                                </div>

                            </div>
                            <div>
                                <img src="http://openweathermap.org/img/wn/{{$value['icon']}}@2x.png" alt="">

                            </div>
                        </div>
                        
                    </div>
                    {{-- categries par tempurature --}}
                    
                    
                    <div class="btn-group" role="group" aria-label="Basic example">
                        @php
                           if ($temp >= 34) {
                            $categorie_temp =$temperature_haute;
                           }elseif ($temp < 34 && $temp >=28){
                            $categorie_temp =$touts_categories;
                           }
                           else {
                            $categorie_temp =$temperature_basse;
                           }
 
                            @endphp

                            @forelse ($categorie_temp as $value)

                          <a  type="button" class="btn btn-secondary"
                          href="/endroit/{{$value->id_categorie}}">
                          {{$value->nom_categorie}}


                        </a>
                        @empty

                        @endforelse
                      </div>
                    {{-- categries par tempurature --}}
                </div>

            </div>
        </div>

    </div>
</section>


{{-- end weather --}}

<!--start middle section-->
<!-- start Experience Travel With Us -->
<section class="padding position-relative ">
    <div class="container">
        <!-- HEADING TITLE -->
        <div class="trheading wow fadeInDown" data-wow-duration="2s" data-wow-delay=".4s">
            <h2 id="categorie">selectionné<br>
                categorie</h2>
        </div>
        <!-- start image content -->

        <!-- start image content -->
        <div class="slider category-slider">
            @forelse ($touts_categories as $value)


            <div class="trCategoryItem">


                <div class="tr-image-class">
                    <a href="/endroit/{{$value->id_categorie}}"> <img
                            src="assets/images/categorie/{{$value->photo_categorie}}" class="img-fluid" alt=""></a>
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
<!-- start choose category -->
<section class="padding position-relative parallax parallax-image-3" id="Destination">
    <!-- shape-five -->
    <div class="shape-image-five wow fadeInLeft" data-wow-duration="3s">
        <img src="assets/images/background-shape/shape-5.png" class="img-fluid"
            alt="decorated backgound shape image | Animated">
    </div>
    <!--End shape-five -->
    <div class="container">
        <!-- HEADING TITLE -->
        <div class="trheading wow fadeInDown" data-wow-duration="2s" data-wow-delay=".4s">
            <h2 class="mb-0">A propos<br>
                Tanger.</h2>
        </div>
        <div class="row">
            <div class="trsubHeading col-12 col-md-8 col-lg-7">
                <p style="font-size:20px ;" class="wow fadeIn mb-3 pb-md-0 pb-5" data-wow-duration="2s"
                    data-wow-delay=".4s">Tout au nord du Maroc, la ville de Tanger invite les voyageurs.
                    Sur ses côtes où convergent les eaux méditerranéennes et atlantiques,
                    vous découvrez une ville authentique bercée d'influences variées.
                    donc ce site qui propose des suggestions pour les endroits par météorologique.
                </p>
            </div>
            <div class="testimonial-bg">
                <div class="container">
                    <div class="testimonial-slider justify-content-center ">
                        <div class="slider slider-nav trtestimonial-nav">
                            <div class="testimonial-slider-img">
                                <img src="assets/images/img-about/23.jpg" class="img-fluid" alt="">
                            </div>
                            <div class="testimonial-slider-img">
                                <img src="assets/images/img-about/16.jpg" class="img-fluid" alt="">
                            </div>
                            <div class="testimonial-slider-img">
                                <img src="assets/images/img-about/10.JPG" class="img-fluid" alt="">
                            </div>
                            <div class="testimonial-slider-img">
                                <img src="assets/images/img-about/17.jpg" class="img-fluid" alt="">
                            </div>
                            <div class="testimonial-slider-img">
                                <img src="assets/images/img-about/12.jpg" class="img-fluid" alt="">
                            </div>
                            <div class="testimonial-slider-img">
                                <img src="assets/images/img-about/9.jpg" class="img-fluid" alt="">
                            </div>
                            <div class="testimonial-slider-img">
                                <img src="assets/images/img-about/11.jpg" class="img-fluid" alt="">
                            </div>
                        </div>
                        <div class="slider slider-for col-12 col-lg-4 m-auto p-0">
                            <div class="tr-testimonial-desc text-center">
                                <h3>Kasbah</h3>

                            </div>
                            <div class="tr-testimonial-desc text-center">
                                <h3>Perdicaris</h3>

                            </div>
                            <div class="tr-testimonial-desc text-center">
                                <h3>Port de Tanger</h3>

                            </div>
                            <div class="tr-testimonial-desc text-center">
                                <h3>Corniche</h3>

                            </div>
                            <div class="tr-testimonial-desc text-center">
                                <h3>Mur de la kasbah</h3>

                            </div>
                            <div class="tr-testimonial-desc text-center">
                                <h3>Grotte d'Hercule</h3>

                            </div>
                            <div class="tr-testimonial-desc text-center">
                                <h3>Cap Spartel</h3>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- shape-three -->
        <div class="position-relative wow fadIn" data-wow-duration="2s" data-wow-delay=".4s">

        </div>

        <!-- start Adventure Trip -->
        <section class="padding position-relative parallax parallax-image-4" id="Stories">
            <!-- shape-seven -->

            <!--End shape-seven -->
            <div class="container">
                <!-- HEADING TITLE -->

                <div class="position-relative wow fadeIn" data-wow-duration="2s" data-wow-delay=".4s">
                    <!-- start image content -->
                    <div class="slider Trip-slider">
                        <div class=" trTripItem">
                            <div class="trTripContent-image"
                                style="background: url(assets/images/img-about/15.jpg) no-repeat; background-size: cover;">
                                <!-- video tag  -->



                                <iframe width="560" height="315" src="https://www.youtube.com/embed/0eU7nM5IkKM"
                                    title="YouTube video player" frameborder="0"
                                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                    allowfullscreen allow="autoplay"></iframe>

                                   
                                <!-- play button -->
                                <a class="play-button" href="#"> <i class="fas fa-play"></i></a>
                            </div>
                        </div>
                        <div class="trTripItem">
                            <div class="trTripContent-image"
                                style="background: url(assets/images/img-about/1.jpg) no-repeat; background-size: cover;">
                                <!-- video tag  -->
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/iSYteEgwOXQ"
                                    title="YouTube video player" frameborder="0"
                                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                    allowfullscreen></iframe>



                                <!-- play button -->
                                <a class="play-button" href="#"> <i class="fas fa-play"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- shape-eight -->

                <!--End shape-eight -->
            </div>
        </section>
        {{-- style meteo --}}

        <link rel="stylesheet" href="{{asset('assets/meteo.css')}}">
        @endsection
