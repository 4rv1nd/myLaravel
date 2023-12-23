@extends('layouts.site')

@push('css')
    <style>

        .slider-outer  #welcome_wrapper p{
            line-height: 5.5rem;
            font-size: 5.1rem;
        }
        .product-descc{
            overflow: hidden;
            display: -webkit-box;
            -webkit-line-clamp: 5;
            line-clamp: 5;
            -webkit-box-orient: vertical;
        }

        .why-us .why-us-desc{
            overflow: hidden;
            display: -webkit-box;
            -webkit-line-clamp: 10;
            line-clamp: 10;
            -webkit-box-orient: vertical;
            text-align: justify;
        }
        .why-us img{
            width: 100%;
        }
        .why-us .image{
            height: 100%;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 60px;
        }

        .video-counter-section {
            margin-bottom: 0px;
        }

        .testimonial-2-content-outer .item .testimonial-2{
            height: 300px;
        }
        .testimonial-content{
            height: 100%;
            display: flex;
            flex-direction: column;
            /* justify-content: space-between; */
            justify-content: end;
        }
        
        .testimonial-2 .testimonial-detail > div:nth-child(1){
            width: 35%;
        }
        .testimonial-2 .testimonial-detail > div:nth-child(2){
            width: 65%;
        }

        .hover-effect-content{
            overflow: hidden;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            line-clamp: 1;
            -webkit-box-orient: vertical;
        }

        .about-us h2{
            color: white !important;
        }
        .about-us p{
            color: white !important;
        }
        .our-work .counter-section-outer-top{
            padding-top: 0px;
            padding-bottom: 0px;
        }

        .counter-outer .counter{
            margin-bottom: -14px;
        }
        .counter-outer .counter.remove:after {
            content: '';
        } 

        .forcefullwidth_wrapper_tp_banner p{
            text-shadow: 0px 10px 10px #234D3C;
            /* text-shadow: 13px 18px 9px #234D3C  */
        }

        .section-head h2{
            font-size: 2.2rem;
        }

        @media only screen and (max-width: 600px){
            .why-us .why-us-desc{
                -webkit-line-clamp: 6;
                line-clamp: 6;
            }
        }

        @media only screen and (max-width: 991px){
            .our-infra .row{
                gap: 23px;
            }
        }
    </style>
@endpush

@section('content')
<!-- CONTENT START -->
<div class="page-content">

    <!-- SLIDER START -->
        @if($home_slider = get_module('name', 'Home Slider', true))
            <div class="slider-outer">
                <div id="welcome_wrapper" class="rev_slider_wrapper fullscreen-container" data-alias="goodnews-header" data-source="gallery" style="background:#eeeeee;padding:0px;">
                    <div id="welcome" class="rev_slider fullscreenbanner" style="display:none;" data-version="5.4.3.1">
                        <ul>
                            @foreach($home_slider->modules_data as $temp_key => $temp_image)
                                @if($temp_image->status!='blocked')
                                <?php $temp_image['image'] = asset('images/thumb/' . $temp_image['image']); ?>
                                <li data-index="rs-90{{$temp_key}}" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="{{$temp_image['image']}}" data-rotate="0" data-fstransition="fade" data-fsmasterspeed="300" data-fsslotamount="7" data-saveperformance="off" data-title="Slide Title" data-param1="Additional Text" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                    <!-- MAIN IMAGE -->
                                    <img src="{{$temp_image['image']}}" alt="{!!$temp_image['description']!!}" data-lazyload="{{$temp_image['image']}}" data-bgposition="center center" data-bgfit="cover" data-bgparallax="4" class="rev-slidebg" data-no-retina>
                                    <!-- LAYERS -->
                                    <!-- LAYER NR. 1 [ for overlay ] -->
                                    <div class="tp-caption tp-shape tp-shapewrapper " id="slide-90{{$temp_key}}-layer-0" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" data-width="full" data-height="full" data-whitespace="nowrap" data-type="shape" data-basealign="slide" data-responsive_offset="off" data-responsive="off" data-frames='[{"from":"opacity:0;","speed":1000,"to":"o:1;","delay":0,"ease":"Power4.easeOut"},{"delay":"wait","speed":1000,"to":"opacity:0;","ease":"Power4.easeOut"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 1;background-color:rgba(0, 0, 0, 0);border-color:rgba(0, 0, 0, 0);border-width:0px;">
                                    </div>
                                    @if(0)
                                    <!-- LAYER NR. 2 [ Black Box ] -->
                                    <!-- <div class="tp-caption   tp-resizeme site-text-white" id="slide-90{{$temp_key}}-layer-2" data-x="['left','left','left','left']" data-hoffset="['0','0','0','10']" data-y="['top','top','top','top']" data-voffset="['160','160','160','180']" data-fontsize="['38','38','38','22']" data-lineheight="['38','38','38','28']" data-width="['700','700','96%','96%']" data-height="['none','none','none','none']" data-whitespace="['normal','normal','normal','normal']" data-type="text" data-responsive_offset="on" data-frames='[{"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[10,10,10,4]" data-paddingright="[0,0,0,0]" data-paddingbottom="[10,10,10,4]" data-paddingleft="[30,30,30,20]" style="z-index: 13; white-space: normal; font-weight: 500;font-family: 'Teko', sans-serif;">{{$temp_image['title']}}</div> -->
                                    @endif
                                    
                                    <!-- LAYER NR. 3 [ for title ] -->
                                    <div class=" demotext tp-caption tp-resizeme" id="slide-90{{$temp_key}}-layer-3" data-x="['left','left','left','left']" data-hoffset="[30','30','30','30']" data-y="['top','top','top','top']" data-voffset="['240','250','250','230']" data-fontsize="['120','72','72','38']" data-lineheight="['100','66','68','38']" data-width="['700','700','96%','96%']" data-height="['none','none','none','none']" data-whitespace="['normal','normal','normal','normal']" data-type="text" data-responsive_offset="on" data-frames='[{"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":1000,"ease":"Power4.easeOut"},{"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[5,5,5,5]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 13; white-space: normal; font-weight: 600;color:#fff;border-width:0px; font-family: 'Teko', sans-serif">{!!$temp_image['description']!!}</div>
                                    
                                    @if(0)
                                    <!-- LAYER NR. 5 [ for see all service botton ] -->
                                    <!-- <div class="tp-caption tp-resizeme" id="slide-90{{$temp_key}}-layer-5" data-x="['left','left','left','left']" data-hoffset="['30','30','30','30']" data-y="['middle','middle','middle','middle']" data-voffset="['250','100','100','20']" data-lineheight="['none','none','none','none']" data-width="['300','300','300','300']" data-height="['none','none','none','none']" data-whitespace="['normal','normal','normal','normal']" data-type="text" data-responsive_offset="on" data-frames='[ {"from":"y:100px(R);opacity:0;","speed":2000,"to":"o:1;","delay":2000,"ease":"Power4.easeOut"},{"delay":"wait","speed":1000,"to":"y:-50px;opacity:0;","ease":"Power2.easeInOut"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index:13; text-transform:uppercase;">
                                        <a href="{{$temp_image['slug']}}" class="site-button site-btn-effect">Book Now</a>
                                    </div> -->
                                    @endif

                                </li>
                                @endif
                            @endforeach
                        </ul>
                        <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
                    </div>
                </div>
            </div>
        @endif
    <!-- SLIDER END -->
    
    <!-- OUR QUOTES AND INFRASTRUCTURE -->
        @if( $our_work = (Object) get_widget_data('title', 'Home page Our Work') )
            <!-- TESTIMONIAL 4 START ON BACKGROUND -->
            <div class="section-content our-infra p-l15 p-r15">
                <div class="section-content p-t30 p-b30 owl-btn-vertical-center">
                    <div class="counter-outer">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-12">
                                <div class="wt-icon-box-wraper center">
                                    <h2 class="counter remove site-text-primary">{{$our_work->integrated_plants}}</h2>
                                    <span class=" title-style-2">{{ucfirst(str_replace("_"," ",strtolower('integrated_plants')))}}</span>
                                    <p>{{$our_work->integrated_plants_description}}</p>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12">
                                <div class="wt-icon-box-wraper center">
                                    <h2 class="counter site-text-primary">{{$our_work->years_of_experiences}}</h2>
                                    <span class=" title-style-2">{{ucfirst(str_replace("_"," ",strtolower('years_of_experiences')))}}</span>
                                    <p>{{$our_work->years_of_experiences_description}}</p>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12">
                                <div class="wt-icon-box-wraper center">
                                    <h2 class="counter remove site-text-primary">{{$our_work->serving_continents}}</h2>
                                    <span class=" title-style-2">{{ucfirst(str_replace("_"," ",strtolower('serving_continents')))}}</span>
                                    <p>{{$our_work->serving_continents_description}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif
    
        @if($our_colors = get_module('name', 'Our Colours'))
            <div class="owl-carousel home-our-colors p-b15">
                @foreach($our_colors->modules_data as $color)
                    @if($color->status=='active')
                        <div class="item">
                            <a href="javascript:void(0);">
                                <img src="{{asset('images/'.$color->image)}}" alt="{{$color->title}}">
                            </a>
                        </div>
                    @endif
                @endforeach
            </div>
        @endif

        @if( $infrastructure = (Object) get_widget_data('title', 'our home infrastructure section') )
          <div class="section-full video-counter-section p-t4 bg-gray">
              <div class="video-counter-bg-image overlay-wraper bg-cover bg-no-repeat" style="background-image:url('{{asset('images/'.$infrastructure->image)}}');">
                  <div class="overlay-main site-bg-secondry opacity-05"></div>
                  <div class="container">
                      <div class="counter-section-outer-top">
                          <div class="counter-outer">
                              <div class="about-us">
                                  <h2>{{$infrastructure->title}}</h2>
                                  {!!$infrastructure->widget_1_description!!}
                                  <!-- <p> {!! $infrastructure->paragraph_1 !!}</p> -->
                              </div>
                          </div>
                      </div>
                      @if( ($quote = get_widget_data('title', 'Home page Quote')) && ($small_card = get_widget_data('title', 'Home page Small Card')) )
                          <div class="counter-section-outer-bottom">
                              <div class="row justify-content-center">
                                  @if( $small_card )
                                  <div class="col-lg-5 col-md-6 m-b30 ">
                                      <div class="video-section-info site-bg-primary site-text-white">
                                          <h3 class="wt-tilte site-text-white">{{$small_card['title']}}</h3>
                                          <p>{{$small_card['widget_1_description']}}</p>
                                          <!-- <a href="/" class="site-button-link">Read More</a> -->
                                      </div>
                                  </div>
                                  @endif
                                  @if( $quote )
                                  <div class="col-lg-7 col-md-6 m-b30">
                                      <div class="video-section-blockquote">
                                          <i class="fa fa-quote-left"></i>
                                          <span class="q-author-detail site-text-white title-style-2">{{$quote['description']}}</span>
                                          <div class="q-author-name site-text-primary title-style-2">
                                              <!-- <div class="overlay-main site-bg-secondry opacity-05"></div> -->
                                              {{$quote['author']}}
                                          </div>
                                      </div>
                                  </div>
                                  @endif
                              </div>
                          </div>
                      @endif
                  </div>
              </div>
          </div>
        @endif
    <!-- OUR QUOTES AND INFRASTRUCTURE -->

    <!-- CLIENT LOGO START -->
        @if( $our_certificates = get_module('name', 'Partners') )
            <div class="section-full mt-5 bg-white certificates">
                <div class="container">
                    <div class="center wt-small-separator-outer text-center">
                        <div class="wt-small-separator site-text-primary">
                            <div class="sep-leaf-left"></div>
                            <div  >Certificates</div>
                            <div class="sep-leaf-right"></div>
                        </div>
                        <!-- <h2>Professional Gardening, Landscaping Services By Industro</h2> -->
                    </div>
                    <div class="section-content">
                        <!-- TESTIMONIAL 4 START ON BACKGROUND -->
                        <div class="section-content">
                            <div class="section-content p-tb30 owl-btn-vertical-center">
                                <div class="owl-carousel home-client-carousel-2">
                                    @foreach($our_certificates->modules_data as $certificate)
                                        @if($certificate->status!='blocked')
                                            <div class="item">
                                                <div class="ow-client-logo">
                                                    <div class="client-logo client-logo-media">
                                                        <a href="javascript:void(0);">
                                                            <img src="{{asset('images/thumb/'.$certificate['image'])}}" alt="{{$certificate['title']}}">
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif
    <!-- CLIENT LOGO End -->

    <!-- SERVICES START -->
        @if( $our_services = get_module('name', 'Products',true) )
            <div class="section-full p-t80 p-b50 bg-gray bg-cover" style="background-image:url({{asset('ajanta-resource/images/background/product-bg.jpg')}});">
                <div class="container ">
                    <!-- TITLE START-->
                    <div class="section-head center wt-small-separator-outer text-center">
                        <div class="wt-small-separator site-text-primary">
                            <div class="sep-leaf-left"></div>
                            <div  >{{$our_services->name}}</div>
                            <div class="sep-leaf-right"></div>
                        </div>
                        <!-- <h2>Professional Gardening, Landscaping Services By Industro</h2> -->
                    </div>
                    <!-- TITLE END-->
                    <div class="section-content">
                        <div class="owl-carousel h3-project-slider  mfp-gallery">
                            @foreach($our_services->modules_data as $module)
                                @if($module->status!='blocked')
                                    <div class="item">
                                        <div class="line-filter-outer">
                                            <div class="line-filter-media">
                                                <img src="{{asset('images/thumb/'.$module->image)}}" alt="{{$module->title}}">
                                                <div class="hover-effect-1">
                                                    <div class="hover-effect-content text-white">
                                                        <h3 class="m-tb0 h-category">{{$module->title}}</h3>
                                                        <p>
                                                            <div class="product-descc">{!!$module->description!!}</div>
                                                        </p>
                                                        <a href="{{asset('images/thumb/'.$module->image)}}" class="mfp-link"><i class="fa fa-search-plus"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="line-filter  bg-white p-a30">
                                                <div class="filter-content">
                                                    <a href="{{route('product.details',$module->slug)}}">    
                                                        <h3 class="m-t0 m-b20 text-uppercase">{{$module->title}}</h3>
                                                    </a>
                                                    <a href="{{route('product.details',$module->slug)}}" class="site-button-link">Read More</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endif
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        @endif
    <!-- SERVICES END -->
    
    <!-- SELF INTRO START -->
        @if($our_experiences = (object) get_widget_data('title', 'Our Experiences') )
            <div class="section-full self-intro-section-outer overlay-wraper bg-cover" style="background-image:url('{{asset('ajanta-resource/images/background/Banner-color.jpg')}}')">
                <div class="overlay-main site-bg-secondry opacity-07"></div>
                <div class="self-intro-top bg-white p-t80 p-b50">
                    <div class="container">
                        <div class="row justify-content-end">
                            
                            <div class="col-lg-6 col-md-12">
                                <!-- TITLE START-->
                                <div class="left wt-small-separator-outer">
                                    <!-- <div class="wt-small-separator site-text-primary">
                                        <div class="sep-leaf-left"></div>
                                        <div  >{{$our_experiences->main_title}}</div>
                                        <div  class="sep-leaf-right"></div>
                                    </div> -->
                                    <h2>{{$our_experiences->title}}</h2>
                                    <p class="why_us_short">{!!$our_experiences->description!!}</p>
                                </div>
                                <!-- TITLE END-->
                            </div>                              

                        </div>
                    </div>
                </div> 
                <div class="self-intro-bottom p-t80 p-b80">
                    <div class="container">
                        <div class="row justify-content-end">
                            
                            <div class="col-lg-6 col-md-6">
                                <div class="self-info-detail">
                                
                                    <div class="wt-icon-box-wraper p-b10 left">
                                        <div class="icon-md m-b20">
                                            <span class="icon-cell site-text-primary"><i class="flaticon-call"></i></span>
                                        </div>
                                        <div class="icon-content text-white">
                                            <h3 class="wt-tilte">Have a question? call us now</h3>
                                            <?php $contact_numbers = (object) get_widget_data('title', 'Contact Numbers'); ?>
                                            @foreach($contact_numbers as $key => $contact_number)
                                                <p>
                                                    <b>{{ucfirst(str_replace('_',' ',$key))}} :</b>
                                                    <a class="text-white" href="tel:{{$contact_number}}">{{$contact_number}}</a>
                                                </p>
                                            @endforeach
                                        </div>
                                    </div>
                                    
                                    <div class="wt-icon-box-wraper p-b10  left">
                                        <div class="icon-md m-b20">
                                            <span class="icon-cell site-text-primary"><i class="flaticon-mail"></i></span>
                                        </div>
                                        <div class="icon-content text-white">
                                            <h3 class="wt-tilte">Need support? Drop us an Email</h3>
                                            <?php $extra_emails = (object) get_widget_data('title', 'Extra Emails'); ?>
                                            @foreach($extra_emails as $key => $extra_email)
                                                <p>
                                                    <b>{{ucfirst(str_replace('_',' ',$key))}} :</b>
                                                    <a class="text-white" href="mailto:{{$extra_email}}">{{$extra_email}}</a>
                                                </p>
                                            @endforeach
                                        </div>
                                    </div>
                                    <?php $our_timing = (object) get_widget_data('title', 'General Settings'); ?>
                                    <div class="wt-icon-box-wraper  left">
                                        <div class="icon-md m-b20">
                                            <span class="icon-cell site-text-primary"><i class="flaticon-history"></i></span>
                                        </div>
                                        <div class="icon-content text-white">
                                            <h3 class="wt-tilte">We are open on</h3>
                                            <!-- <p>Mon - Sat  07:00 - 21:00 </p>
                                            <p>Sunday - Closed</p> -->
                                            <p>{{$our_timing->open_time}}</p>
                                            <p>{{$our_timing->close_day}}</p>
                                        </div>
                                    </div>                                                                        
                                                                    
                                </div>
                            </div>                              

                        </div>
                    </div>
                </div>  
                <div class="container">
                    <div class="self-intro-pic-block2">
                        <div class="wt-media">
                            <img src="{{asset('ajanta-resource/images/self-pic-2.png')}}" alt="{{$our_experiences->title}}">
                        </div>
                    </div>
                </div>
            </div>
        @endif   
    <!-- SELF INTRO  END -->   
  
    <!-- WHAT MAKES US TOP CHOICE ? -->
        @if($what_makes_us_top_choice = get_page(['module_id'=>6,'title'=>'What Makes Ajanta Top Choice ?']) )
            <div class="section-full welcome-section-outer why-us">
                <div class="welcome-section-top bg-white p-tb80">
                    <div class="container">
                        <div class="row">
                        
                            <div class="col-lg-6 col-md-12">
                                <div class="img-colarge">
                                    <div class="colarge-1">
                                        <img src="{{asset('images/'.$what_makes_us_top_choice->image)}}" alt="{{$what_makes_us_top_choice->title}}" class="slide-righ">
                                    </div>
                                    <div class="since-year-outer"><div class="since-year"><span>Since</span><strong>1948</strong></div></div>
                                </div>
                            </div>  
                                                    
                            <div class="col-lg-6 col-md-12">
                                <div class="welcom-to-section">
                                    <!-- TITLE START-->
                                    <h2 class="wt-tilte">{{$what_makes_us_top_choice->title}}</h2>
                                    <!-- TITLE END-->
                                    <ul class="site-list-style-one">
                                        <li>Customized Colour Solutions</li>
                                        <li>Advanced Machinery & Technologies</li>
                                        <li>Clear and Transparent Working Process</li>
                                        <li>Certified by Many Governments in the World</li>
                                    </ul>
                                    <div class="why-us-desc">{!!$what_makes_us_top_choice->description!!}</div>
                                    <div class="welcom-to-section-bottom d-flex justify-content-between mt-5">
                                        <div class="welcom-btn-position"><a href="{{$what_makes_us_top_choice->slug}}" class="site-button-secondry site-btn-effect">More About</a></div>
                                    </div>   
                                </div>
                            </div>

                        </div>
                    </div> 
                </div>
            </div>   
        @endif
    <!-- WHAT MAKES US TOP CHOICE ? -->

    <!-- TESTIMONIAL START -->
        @if( $clients = (object) get_module('name', 'Testimonials') )
            <!-- bg-gray -->
            <div class="section-full bg-no-repeat bg-center p-t50 p-b30" style="background-image:url({{asset('ajanta-resource/images/background/Testimonial.jpg')}})">
                <div class="overlay-main site-bg-secondry opacity-05"></div>
                <div class="container">
                    <!-- TITLE START-->
                    <div class="section-head center wt-small-separator-outer">
                        <div class="wt-small-separator site-text-primary">
                        <!-- <div class="wt-small-separator site-text-primary mt-4"> -->
                            <div class="sep-leaf-left"></div>
                            <div  >What our clients say</div>
                            <div class="sep-leaf-right"></div>
                        </div>
                        <!-- <h2>In the testimonial section, we will show customer reviews. We display three reviews at a time on each slide. This builds trust in the new customers.</h2> -->
                    </div>
                    <!-- TITLE END-->
                    <div class="testimonial-2-content-outer">
                        <div class="testimonial-3-content owl-carousel  owl-btn-vertical-center long-arrow-next-prev">
                            @foreach($clients->modules_data as $client)
                                @if($client->status!='blocked')
                                    <div class="item">
                                        <div class="testimonial-2 bg-white">
                                            <div class="testimonial-content">
                                                <div class="testimonial-text">
                                                    <i class="fa fa-quote-left"></i>
                                                    {!!$client->description!!}
                                                </div>
                                                <div class="testimonial-detail">
                                                    <div class="testimonial-pic-block">
                                                        <div class="testimonial-pic">
                                                            <img src="{{asset('/images/thumb/'.$client->image)}}" alt="{{$client->title}}">
                                                        </div>
                                                    </div>
                                                    <div class="testimonial-info">
                                                        <span class="testimonial-name title-style-2 site-text-secondry">{!!$client->title!!}</span>
                                                        <span class="testimonial-position title-style-2 site-text-primary">{{$client->extra_field_1}}</span>
                                                        <span class="testimonial-name title-style-2 site-text-info">{{$client->extra_field_2}}/5</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endif
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        @endif
    <!-- TESTIMONIAL END -->

    <!-- OUR Genration START -->
        @if( $our_genration = get_module('name', 'Our Three generations') )
            <div class="section-full p-t80 p-b50 bg-white team-bg-section-outer">
                <div class="container">
                    <div class="section-content">
                        <!-- TITLE START-->
                        <div class="section-head center wt-small-separator-outer text-center">
                            <div class="wt-small-separator site-text-primary">
                                <div class="sep-leaf-left"></div>
                                <div  >{{$our_genration->term}}</div>
                                <div class="sep-leaf-right"></div>
                            </div>
                            <!-- <h2>We will serve you with the best of our capacity by expert team</h2> -->
                        </div>
                        <!-- TITLE END-->
                        <div class="section-content">
                            <div class="row justify-content-center">
                                @foreach($our_genration->modules_data as $module)
                                    @if($module->status!='blocked')
                                        <div class="col-lg-4 col-md-6 col-sm-12 m-b30">
                                            <div class="wt-team-1">
                                                <div class="wt-media">
                                                    <img src="{{asset('images/thumb/'.$module->image)}}" alt="{{$module->title}}">
                                                    <div class="team-social-center">
                                                        <ul class="team-social-bar">
                                                            <li><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                                            <li><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                                            <li><a href="javascript:void(0);"><i class="fa fa-instagram"></i></a></li>
                                                            <li><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="wt-info p-a30 bg-gray">
                                                    <div class="team-detail  text-center">
                                                        <h3 class="m-t0 team-name">
                                                            <a href="javascript:void(0);" class="site-text-secondry">{{$module->title}}</a>
                                                        </h3>
                                                        <span class="title-style-2 team-position site-text-primary">{!!$module->description!!}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif
    <!-- OUR Genration END -->

    <!-- ABOUT ONE START -->
        @if($why_us = (Object) get_widget_data('title', 'Why Choose Us ?'))
            <div class="section-full p-t80 p-b50 bg-no-repeat bg-bottom-left bg-gray">
                <div class="about-section-11">
                    <div class="container">
                        <div class="section-content">                 
                            <div class="row justify-content-center d-flex">
                            
                                <div class="col-lg-6 col-md-12 m-b30 about-max-11-position">
                                    <div class="about-max-11">
                                        <div class="about-max-11-media">
                                            <img src="{{asset('images/'.$why_us->image)}}" alt="Call us for any query">
                                        </div>
                                        <div class="ab-call-us">
                                            <div class="wt-icon-box-wraper left bg-white p-a30">
                                                <div class="icon-xl text-primary radius">
                                                    <span class="icon-cell  site-text-primary""><i class="flaticon-call"></i></span>
                                                </div>
                                                <div class="icon-content">
                                                    <h3 class="wt-tilte text-uppercase">Call us for any query</h3>
                                                    <?php $temp_main_con = get_widget_data('title', 'General Settings')['phone_number']; ?>
                                                    <a href="tel:$temp_main_con">
                                                        <p>{{$temp_main_con}}</p>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>  

                                <div class="col-lg-6 col-md-12 m-b30">
                                    <div class="about-section-11-right">
                                        <!-- TITLE START-->
                                        <div class="section-head left wt-small-separator-outer">
                                            <!-- <div class="wt-small-separator site-text-primary">
                                                <div>Your home comfort experts</div>
                                            </div> -->
                                            <h2>{{$why_us->title}}</h2>
                                        </div>
                                        <!-- TITLE END-->
                                        {!!$why_us->widget_1_description!!}
                                        <!-- <a href="about-1.html" class="site-button site-btn-effect">More About</a>  -->
                                    </div>
                                </div>
                                                        
                            </div>
                        </div> 
                    </div>
                </div>
            </div>  
        @endif 
    <!-- ABOUT ONE END -->

    <!-- OUR BLOG START -->
        @if( ($blogs = get_module('name', 'Blogs')) && ($blogs->is_preview))
            <?php $blog_count = 2; ?>
            <div class="section-full  p-t80  bg-white">
                <div class="container">
                    <div class="wt-separator-two-part">
                        <div class="row wt-separator-two-part-row">
                            <div class="col-lg-8 col-md-7 wt-separator-two-part-left">
                                <!-- TITLE START-->
                                <div class="section-head left wt-small-separator-outer">
                                    <div class="wt-small-separator site-text-primary">
                                        <div class="sep-leaf-left"></div>
                                        <div>Latest Articles Updated Daily</div>
                                        <div class="sep-leaf-right"></div>
                                    </div>
                                    <h2>We Are Here To Learn You More From Blog</h2>
                                </div>
                                <!-- TITLE END-->
                            </div>
                            <div class="col-lg-4 col-md-5 wt-separator-two-part-right text-right">
                                <a href="{{route('blogs.list')}}" class="site-button site-btn-effect">More Detail</a>
                            </div>
                        </div>
                    </div>
                    <!-- BLOG SECTION START -->
                    <div class="section-content">
                        <div class="row d-flex justify-content-center">
                            @foreach($blogs->modules_data as $temp_blog)
                                @php $temp_blog->category_ids = get_cat($temp_blog->category_ids)->title; @endphp
                                @if(($temp_blog->status!='blocked') &&  ($blog_count==true))
                                    @php $blog_count--; @endphp                            
                                    <div class="col-lg-6 col-md-6 col-sm-12 m-b30">
                                        <div class="blog-post date-style-2">
                                            <div class="wt-post-media wt-img-effect zoom-slow">
                                                <a href="{{route('blogs.detail',$temp_blog->slug)}}">
                                                    <img src="{{asset('images/thumb/'.$temp_blog->image)}}" alt="{{$temp_blog->title}}">
                                                </a>
                                            </div>
                                            <div class="wt-post-info bg-white p-t30">
                                                <div class="wt-post-meta ">
                                                    <ul>
                                                        <li class="post-category"><span>{{$temp_blog->category_ids}}</span> </li>
                                                        <li class="post-date">{{date('F d, Y',strtotime($temp_blog->created_at))}}</li>
                                                        <!-- <li class="post-comment">24 Comment</li> -->
                                                    </ul>
                                                </div>
                                                <div class="wt-post-title ">
                                                    <a href="{{route('blogs.detail',$temp_blog->slug)}}" >
                                                        <h3 class="post-title">{{$temp_blog->title}}</h3>
                                                    </a>
                                                </div>
                                                <div class="wt-post-readmore ">
                                                    <a href="{{route('blogs.detail',$temp_blog->slug)}}" class="site-button-link black">Read More</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endif
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        @endif
    <!-- OUR BLOG END -->

</div>
<!-- CONTENT END -->
@endsection