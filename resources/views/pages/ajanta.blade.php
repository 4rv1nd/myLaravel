@extends('layouts.site')

@section('content')
<style>
  @media only screen and (max-width: 991px){
    .wt-bnr-inr {
      padding: unset;
    }
  }
  p{
    line-height: 1.5rem;
  }
</style>
<!-- CONTENT START -->
<div class="page-content">
  <!-- INNER PAGE BANNER -->
  <div class="wt-bnr-inr overlay-wraper bg-center" style="background-image:url('{{asset('images/thumb/'.$cms->image)}}');">
    <div class="overlay-main site-bg-secondry opacity-07"></div>
    <div class="container">
      <div class="wt-bnr-inr-entry">
        <div class="banner-title-outer">
          <div class="banner-title-name">
            <h1>
              <h2 class="site-text-primary">{{$cms->title}}</h2>
            </h1>
          </div>
        </div>
        <!-- BREADCRUMB ROW -->
        <div>
          <ul class="wt-breadcrumb breadcrumb-style-2">
            <li><a href="javascript:void(0);">Home</a></li>
            <li><a href="{{url($cms->slug)}}">{{$cms->title}}</a></li>
          </ul>
        </div>
        <!-- BREADCRUMB ROW END -->
      </div>
    </div>
  </div>
  <!-- INNER PAGE BANNER END -->
  <div class="section-full p-t80 p-b50">
    <div class="container">
      <div class="image-container mb-5">
        <img src="{{asset('images/thumb/'.$cms->image)}}" alt="{{$cms->title}}"/>
      </div>
      <div>{!!$cms->description!!}</div>
    </div>
  </div>
</div>
<!-- CONTENT END -->
@endsection