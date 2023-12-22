@extends('layouts.site')

@push('css')
    <style>
        .product-about{
            position: relative;
            transition: 1.5s;
            top: -10rem;
            opacity: 0;
            padding: 15px 0px;
        }
        .after-show{
            top: 0rem;
            opacity: 1;
        }
        /* .project-img-effect-1 img {
            aspect-ratio: 6/3;
        } */
        .wt-bnr-inr-entry .banner-title-outer h2 {
            color: white;
        }
    </style>
@endpush

@section('content')
<!-- CONTENT START -->
<div class="page-content">
    <!-- INNER PAGE BANNER -->
    <div class="wt-bnr-inr overlay-wraper bg-center" style="background-image:url('{{asset('images/'.explode(',',$modulesdata->images)[0])}}');">
        <div class="overlay-main site-bg-secondry opacity-04"></div>
        <div class="container">
            <div class="wt-bnr-inr-entry">
                <div class="banner-title-outer">
                    <div class="banner-title-name">
                        <h1>
                            <h2 class="site-text-primary">{{$modulesdata->title}}</h2>
                        </h1>
                    </div>
                </div>
                <!-- BREADCRUMB ROW -->

                <div>
                    <ul class="wt-breadcrumb breadcrumb-style-2">
                        <li><a href="javascript:void(0);">Home</a></li>
                        <!-- <li><a href="{{route('products')}}">Product</a></li> -->
                        <li><a href="javascript:void(0);">Product</a></li>
                    </ul>
                </div>

                <!-- BREADCRUMB ROW END -->
            </div>
        </div>
    </div>
    <!-- INNER PAGE BANNER END -->
    
    <!-- GALLERY SECTION START -->
    <div class="section-full p-t80">
        <div class="container">
            <div class="section-content">
                <div class="row">
                    <div class="project-img-effect-1">
                        <img src="{{asset('images/'.explode(',',$modulesdata->images)[0])}}" alt="{{$modulesdata->title}}" />
                    </div>
                </div>
                <div class="bg-gray p-a30 row product-about">
                    <div class="col-6 wt-icon-box-wraper left bdr-1 bdr-bottom bdr-gray">
                        <div class="icon-sm m-b15">
                            <span class="icon-cell  site-text-primary"><i class="fa fa-tachometer"></i></span>
                        </div>
                        <div class="icon-content">
                            <h3 class="wt-tilte m-b5">Product</h3>
                            <p>{{$modulesdata->title}}</p>
                        </div>
                    </div>
                    <div class="col-6 wt-icon-box-wraper left bdr-1 bdr-bottom bdr-gray">
                        <div class="icon-sm m-b15">
                            <span class="icon-cell  site-text-primary"><i class="fa fa-calendar"></i></span>
                        </div>
                        <div class="icon-content">
                            <h3 class="wt-tilte m-b5">Time</h3>
                            <p>{{date('d F, Y',strtotime($modulesdata->created_at))}}</p>
                        </div>
                    </div>
                    <!-- <div class="wt-icon-box-wraper left m-b15 p-b15 bdr-1 bdr-bottom bdr-gray">
                        <div class="icon-sm m-b15">
                            <span class="icon-cell  site-text-primary"><i class="fa fa-list-alt"></i></span>
                        </div>
                        <div class="icon-content">
                            <h3 class="wt-tilte m-b5">Categories</h3>
                            <p>Business, Industrial</p>
                        </div>
                    </div>  -->
                    <!-- <div class="wt-icon-box-wraper left m-b15 p-b15 bdr-1 bdr-bottom bdr-gray">
                        <div class="icon-sm m-b15">
                            <span class="icon-cell  site-text-primary"><i class="fa fa-tags"></i></span>
                        </div>
                        <div class="icon-content">
                            <h3 class="wt-tilte m-b5">Status</h3>
                            <p>Good</p>
                        </div>
                    </div>   -->
                    <!-- <div class="wt-icon-box-wraper left">
                        <div class="icon-sm m-b15">
                            <span class="icon-cell  site-text-primary"><i class="fa fa-user"></i></span>
                        </div>
                        <div class="icon-content">
                            <h3 class="wt-tilte m-b5">Client</h3>
                            <p>Matthew Stone </p>
                        </div>
                    </div> -->
                </div>
                <div class="section-full p-t80 p-b50">
                    <div class="container">
                        <div class="row d-flex justify-content-center flex-wrap">
                            <div class="project-detail-right">{!!$modulesdata->description!!}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- GALLERY SECTION END -->
</div>
<!-- CONTENT END -->
@endsection

@push('js')
    <script>
        var observer = new MutationObserver(function(mutations) {
            mutations.forEach(function(mutation) {
                // console.log(mutation.target);
                if ( (mutation.target.getAttribute('style') == "display: none;") && (mutation.target.getAttribute('data-status')!='done') ) {
                    mutation.target.setAttribute('data-status','done');
                    document.querySelector('.product-about').classList.add('after-show');
                }
            });
        });
        observer.observe( document.querySelector('.loading-area'), {
            attributes: true //configure it to listen to attribute changes
        });
    </script>
@endpush