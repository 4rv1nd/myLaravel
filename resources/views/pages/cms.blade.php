@extends('layouts.app')

@section('content')
<!-- Inner Heading Start -->
<!-- Inner Heading Start -->
<div class="innerHeading-wrap">
  <div class="container">
    <h1>{{$cms->title}}</h1>
  </div>
</div>
<!-- About Start -->
<?php $class="12"; if($cms->image!='' && null!==($cms->image)){
  $class = '5';
} ?>

<div class="about-wrap " id="about">
  <div class="container">
    <div class="row">
      @if($cms->image!='' && null!==($cms->image))
      <div class="col-lg-12">
        <div class="aboutImg"><img src="{{asset('images/'.$cms->image)}}" alt=""></div>
      </div>
      @endif
      <div class="col-lg-12">
        <div class="about_box-removed">
          <!--<div class="title">
            <h1>{{$cms->title}}</h1>
          </div>-->
          <p>{!!$cms->description!!}</p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- About End -->

<!-- Gallery Start -->
@if(null!==(module(4)) && $slug == 'gallery')
<div class="gallery-wrap ">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="row">
          @foreach(module(4) as $gallery)
          <div class="col-lg-3 col-md-6">
            <div class="galleryImg"><img src="{{asset('images/'.$gallery->image)}}" alt="{{$gallery->title}}">
              <div class="portfolio-overley">
                <div class="content"> <a href="{{asset('images/'.$gallery->image)}}" class="fancybox image-link" data-fancybox="images" title="{{$gallery->title}}"><i class="fas fa-search-plus"></i></a> </div>
              </div>
            </div>
          </div>
          @endforeach
          
        </div>
      </div>
    </div>
  </div>
</div>
@endif
<!-- Gallery End --> 

@endsection

