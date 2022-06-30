<!DOCTYPE html>
<html lang="zxx" dir="ltr">
@include('pages.layouts.head')

<body data-spy="scroll" data-target="#myHeader">
<!-- Preloader -->
{{-- <div class="preloader">
    <div class="main-circle">
      <div class="second-circle">
        <div class="third-circle">  
        </div>
      </div>
    </div>
</div>     --}}

<div id="wrap">
<!-- Page Wrapper -->
    <div class="wrap-top-header-slider parallax parallax-image-1">
        <!-- shape-one -->
        <div class="shape-image-one col-5 col-lg-3 col-xl-4 wow fadeIn" data-wow-delay="1s">
            <img src="assets/images/background-shape/shape-1.png" class="img-fluid" alt="The Animated background shape Image">
        </div>
        <!--End shape-one -->
        <!-- Start Header -->
       @include('pages.layouts.header')
        <!-- End Header -->
        <!-- start slider section -->
        @yield('content')
    <!-- start Testimonials-->
    
    <!--start email-subscription (footer-top)-->
  
</div>

<!--end middle section-->

<!--start footer-->
@include('pages.layouts.footer')
{{-- end footer --}}
</body>
</html>