<header class="header" id="myHeader">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-6 col-md-4 col-lg-2">
                <div class="logo">
                    <a href="index.html">
                        <img src="{{asset('assets/images/logo/1.png')}}" class="img-fluid" alt="The Adevnto Logo Image">
                    </a>
                </div>
            </div>
            <div class="col-6 col-md-8 col-lg-10">
                <!-- Nav -->
                <nav class="navbar navbar-expand-lg nabar-own p-0">
                    <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation"> 
                        <span class="navbar-toggler-icon">
                            <span class="menu_line_1"></span>
                            <span class="menu_line_2"></span>
                            <span class="menu_line_3"></span>
                        </span>
                    </button>
                    <div class="collapse navbar-collapse tr-nabar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto align-self-center">
                            <li class="nav-item tr-nav-item"><a class="nav-link" href="{{route('index')}}">Accueil</a>
                            </li>
                            <li class="nav-item tr-nav-item"><a class="nav-link" href="{{route('index')}}">Météo</a>
                            </li>
                            <li class="nav-item tr-nav-item"><a class="nav-link" href="#Destination">À-propos </a>
                            </li>
                            <li class="nav-item tr-nav-item"><a class="nav-link" href="#categorie">Categories</a>
                            </li>
                            
                        </ul>
                       
                    </div>
                </nav>
               
              
            </div>
        </div>
    </div>
</header>