@extends('pages.principal')
@section('content')
<div class="main-content">
    <h1 class="titre text-center ">
   <strong>Ajouterles galeries</strong>
   </h1>
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">

                            <!-- form -->
                            <div class="card-header">Ajouter galerie</div>
                            <div class="card-body">
                                
                            
                                <form action="{{route('afficher-galerie.store')}}"  method="POST" novalidate="novalidate"   enctype="multipart/form-data">
                                
                                
                                @csrf 
                                   <div class="row">
                
                                     </div>
                                     <div class="row">
                                        <div class="col-6">
                                            <label for="cc-exp" class="control-label mb-1">Nom place</label>
                                            <select name="id_place" id="select" class="form-control">                                    
                                            <option selected>Select place</option>
                                             @forelse ($places as $value) 
                                                 
                                              <option value="{{$value->id_place}}">{{$value->nom_place}} </option>
          
          
                                               @empty
                                                 
                                              @endforelse 
                                            </select>
                                            <span class="help-block" ²  data-valmsg-for="cc-exp" data-valmsg-replace="true"></span>
                                        </div>
                                    </div>
                                            <label for="x_card_code" class="control-label mb-1">Photo</label>
                                            <i
                                                class="fas fa-cloud-upload-alt tm-upload-icon"></i>
                                            <div class="input-group">
                            
                                                <input id="x_card_code"  value=""
                                                             type="file" name="photo_place">

                                            </div>
                                        </div>   
                                    </div>
                                    <div class="">
                                        <button class="btn btn-info au-btn--block " type="submit"> Ajouter </button>

                                      
                                    </div>
                                 </div>
                                
                                </form>
                            </div>
                        </div>
                        <!-- fin -->                        
                    <div class="col-md-12">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection