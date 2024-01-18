@extends('layouts.site')
@section('content')
<!-- CONTENT START -->
<div class="page-content">
        
    <!-- INNER PAGE BANNER -->
    <div class="wt-bnr-inr overlay-wraper bg-center" style="background-image:url(images/banner/5.jpg);">
        <div class="overlay-main site-bg-secondry opacity-07"></div>
        <div class="container">
            <div class="wt-bnr-inr-entry">
                <div class="banner-title-outer">
                    <div class="banner-title-name">
                        <h2 class="site-text-primary">{{$our_products->name}}</h2>
                    </div>
                </div>
                <!-- BREADCRUMB ROW -->                            
                <div>
                    <ul class="wt-breadcrumb breadcrumb-style-2">
                        <li><a href="{{route('home')}}">Home</a></li>
                        <li>Product</li>
                    </ul>
                </div>
                <!-- BREADCRUMB ROW END -->                        
            </div>
        </div>
    </div>
    <!-- INNER PAGE BANNER END -->
    
    <!-- SECTION CONTENT START -->
    <div class="section-full p-t80 p-b50">
        <div class="container">
            <div class="section-content">
                <div class="row d-flex justify-content-center">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 m-b30">                       
                    
                        <div class="row">
                            @foreach($our_products->modules_data as $product)
                            <div class="col-lg-4 col-md-4 m-b30">
                                <div class="wt-box wt-product-box block-shadow  overflow-hide">
                                    <div class="wt-thum-bx wt-img-overlay1 wt-img-effect zoom">
                                        <img src="{{asset('images/'.$product->image)}}" alt="{{$product->title}}">
                                        <div class="overlay-bx">
                                            <!-- <div class="overlay-icon">
                                                <a href="javascript:void(0);">
                                                    <i class="fa fa-cart-plus wt-icon-box-xs"></i>
                                                </a>
                                                <a class="mfp-link" href="javascript:void(0);">
                                                    <i class="fa fa-heart wt-icon-box-xs"></i>
                                                </a>
                                            </div> -->
                                        </div>
                                    </div>
                                    <div class="wt-info  text-center">
                                         <div class="p-a20 bg-white">
                                            <h3 class="wt-title">
                                                <a href="{{route('product.details',$product->slug)}}">{{$product->title}}</a>
                                            </h3>
                                            @if(0)
                                                <span class="price">
                                                    <ins>
                                                        <span><span class="Price-currencySymbol">$ </span>49.00</span>
                                                    </ins>
                                                </span>
                                            @endif
                                         </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    
                    </div>               
                </div>
            </div>
        </div>
    </div>
     <!-- SECTION CONTENT END -->
     
    @if(0)
    <!-- SECTION CONTENT START -->
    <div class="section-full p-t80 p-b50 bg-gray">
        <div class="container">
            <div class="section-content">
               
                <!-- TITLE START -->
                    <div class="wt-separator-two-part">
                        <div class="row wt-separator-two-part-row">
                            <div class="col-lg-8 col-md-6 wt-separator-two-part-left">
                                <!-- TITLE START-->
                                <div class="section-head left wt-small-separator-outer">
                                    <div class="wt-small-separator site-text-primary">
                                        <div class="sep-leaf-left"></div>
                                        <div>Our Best Products</div>
                                        <div class="sep-leaf-right"></div>
                                    </div>
                                    <h2>Featured products</h2>
                                </div>
                                <!-- TITLE END-->
                            </div>
                            <div class="col-lg-4 col-md-6 wt-separator-two-part-right text-right">
                                <a href="javascript:;" class="site-button site-btn-effect">More Detail</a>
                            </div>
                        </div>
                    </div>                        
                
                <!-- TITLE END -->
            
                <div class="owl-carousel featured-products owl-btn-vertical-center">
                     
                
                    <!-- COLUMNS 1 -->
                    <div class="item">
                        <div class="wt-box wt-product-box   overflow-hide">
                            <div class="wt-thum-bx wt-img-overlay1 wt-img-effect zoom">
                                <img src="images/products/pic-1.jpg" alt="">
                                <div class="overlay-bx">
                                    <div class="overlay-icon">
                                        <a href="javascript:void(0);">
                                            <i class="fa fa-cart-plus wt-icon-box-xs"></i>
                                        </a>
                                        <a class="mfp-link" href="javascript:void(0);">
                                            <i class="fa fa-heart wt-icon-box-xs"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="wt-info  text-center">
                                 <div class="p-a20 bg-white">
                                    <h3 class="wt-title">
                                        <a href="products/details">One Mechanical Tool</a>
                                    </h3>
                                    <span class="price">                                                
                                        <ins>
                                            <span><span class="Price-currencySymbol">$ </span>2.00</span>
                                        </ins>
                                    </span>
                                    
                                 </div>
                            </div>
                        </div>
                    </div>
                    <!-- COLUMNS 2 -->
                    <div class="item">
                        <div class="wt-box wt-product-box   overflow-hide">
                            <div class="wt-thum-bx wt-img-overlay1 wt-img-effect zoom">
                                <img src="images/products/pic-2.jpg" alt="">
                                <div class="overlay-bx">
                                    <div class="overlay-icon">
                                        <a href="javascript:void(0);">
                                            <i class="fa fa-cart-plus wt-icon-box-xs"></i>
                                        </a>
                                        <a class="mfp-link" href="javascript:void(0);">
                                            <i class="fa fa-heart wt-icon-box-xs"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="wt-info  text-center">
                                 <div class="p-a20 bg-white">
                                    <h3 class="wt-title">
                                        <a href="products/details">Two Mechanical Tool </a>
                                    </h3>
                                    <span class="price">                                                
                                        <ins>
                                            <span><span class="Price-currencySymbol">$ </span>2.00</span>
                                        </ins>
                                    </span>
                                    
                                 </div>
                            </div>
                        </div>
                    </div>
                    <!-- COLUMNS 3 -->
                    <div class="item">
                        <div class="wt-box wt-product-box   overflow-hide">
                            <div class="wt-thum-bx wt-img-overlay1 wt-img-effect zoom">
                                <img src="images/products/pic-3.jpg" alt="">
                                <div class="overlay-bx">
                                    <div class="overlay-icon">
                                        <a href="javascript:void(0);">
                                            <i class="fa fa-cart-plus wt-icon-box-xs"></i>
                                        </a>
                                        <a class="mfp-link" href="javascript:void(0);">
                                            <i class="fa fa-heart wt-icon-box-xs"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="wt-info  text-center">
                                 <div class="p-a20 bg-white">
                                    <h3 class="wt-title">
                                        <a href="products/details">Three Mechanical Tool</a>
                                    </h3>
                                    <span class="price">
                                        <ins>
                                            <span><span class="Price-currencySymbol">$ </span>2.00</span>
                                        </ins>
                                    </span>
                                    
                                 </div>
                            </div>
                        </div>
                    </div>
                    <!-- COLUMNS 4 -->
                    <div class="item">
                        <div class="wt-box wt-product-box   overflow-hide">
                            <div class="wt-thum-bx wt-img-overlay1 wt-img-effect zoom">
                                <img src="images/products/pic-4.jpg" alt="">
                                <div class="overlay-bx">
                                    <div class="overlay-icon">
                                        <a href="javascript:void(0);">
                                            <i class="fa fa-cart-plus wt-icon-box-xs"></i>
                                        </a>
                                        <a class="mfp-link" href="javascript:void(0);">
                                            <i class="fa fa-heart wt-icon-box-xs"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="wt-info  text-center">
                                 <div class="p-a20 bg-white">
                                    <h3 class="wt-title">
                                        <a href="products/details">Four Mechanical Tool</a>
                                    </h3>
                                    <span class="price">                                                
                                        <ins>
                                            <span><span class="Price-currencySymbol">$ </span>2.00</span>
                                        </ins>
                                    </span>
                                    
                                 </div>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
    <!-- SECTION CONTENT END -->             
    @endif

</div>
<!-- CONTENT END -->
@endsection