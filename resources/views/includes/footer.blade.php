<!-- FOOTER START -->
<footer class="site-footer footer-large footer-dark text-white footer-style1">
    <!-- FOOTER BLOCKES START -->
    <div class="footer-top bg-no-repeat bg-bottom-right" style="background-image:url({{asset('ajanta-resource/images/background/footer-bg.png')}})">
        <div class="container">
            <div class="row">

                <div class="col-lg-5 col-md-12 col-sm-12">
                    <div class="footer-h-left">
                        <div class="widget widget_about">
                            <div class="logo-footer clearfix">
                                <a href="index.html">
                                    <img src="{{asset('images/thumb/'.$website_data->footer_logo)}}" alt="{{$website_data->website_name}}" />
                                </a>
                            </div>
                            <p>{{$website_data->widget_1_description}}</p>
                        </div>
                        <div class="widget recent-posts-entry">
                            <ul class="widget_address">
                                <li><i class="fa fa-map-marker"></i>{{$website_data->address}}</li>
                                <li>
                                    <a class="text-white" href="mailto:{{$website_data->email_address}}">
                                        <i class="fa fa-envelope"></i>{{$website_data->email_address}}
                                    </a>
                                </li>
                                <li>
                                    <a class="text-white" href="tel:{{$website_data->phone_number}}">
                                        <i class="fa fa-phone"></i>{{$website_data->phone_number}}
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>

                <div class="col-lg-7 col-md-12 col-sm-12">
                    <div class="row footer-h-right">

                        @foreach(get_nav() as $nav)
                            @if($nav->slug=='about-us')
                                <div class="col-lg-4 col-md-4">
                                    <div class="widget widget_services">
                                        <h3 class="widget-title">{{$nav->title}}</h3>
                                        <ul>
                                            <?php $nav_sub_menu = get_nav($nav->id,1); ?>
                                            @if(count($nav_sub_menu)>0)
                                                @foreach($nav_sub_menu as $subnav)
                                                    <li>
                                                        <a href="{{ ($subnav->menu_is!='internal') ? $subnav->slug : url($subnav->slug) }}">{{$subnav->title}}</a>
                                                    </li>
                                                @endforeach
                                            @endif
                                        </ul>
                                    </div>
                                </div>
                            @endif
                        @endforeach

                        <div class="col-lg-4 col-md-4">
                            <div class="widget widget_services">
                                <h3 class="widget-title">{{__('Useful links')}}</h3>
                                <ul>
                                    @foreach(get_nav() as $nav)
                                        @if($nav->slug!='about-us' && $nav->slug!='products')
                                            @if($nav->post_id!=null)
                                                @if($nav->ModulesData->status =='active' )
                                                    <li><a href="{{$nav->ModulesData->slug}}">{{$nav->title}}</a></li>
                                                @endif
                                            @else
                                                <li>
                                                    <a href="{{ ($nav->menu_is!='internal') ? $nav->slug : url($nav->slug) }}">{{$nav->title}}</a>
                                                </li>
                                            @endif
                                        @endif
                                    @endforeach
                                    <li><a href="terms-and-conditions">Terms & Conditions</a></li>
                                    <li><a href="privacy-policy">Privacy Policy</a></li>
                                </ul>
                            </div>
                            
                            <ul class="social-icons">
                                @if( (isset($website_data->google)) && ($website_data->facebook_link!=null) )
                                    <li><a href="javascript:void(0);" class="fa fa-google"></a></li>
                                @endif

                                @if( (isset($website_data->rss)) && ($website_data->facebook_link!=null) )
                                    <li><a href="javascript:void(0);" class="fa fa-rss"></a></li> 
                                @endif

                                @if($website_data->facebook_link!=null)
                                    <li><a href="{{$website_data->facebook_link}}" class="fa fa-facebook"></a></li>
                                @endif

                                @if($website_data->twitter_link!=null)
                                    <!-- <li><a href="{{$website_data->twitter_link}}" class="fa fa-twitter"></a></li> -->
                                    <li><a href="{{$website_data->twitter_link}}"><svg xmlns="http://www.w3.org/2000/svg" height="15" width="15" fill="#FFFFFF" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2023 Fonticons, Inc.--><path d="M389.2 48h70.6L305.6 224.2 487 464H345L233.7 318.6 106.5 464H35.8L200.7 275.5 26.8 48H172.4L272.9 180.9 389.2 48zM364.4 421.8h39.1L151.1 88h-42L364.4 421.8z"/></svg></a></li>
                                @endif

                                @if($website_data->linkedin_link!=null)
                                    <li><a href="{{$website_data->linkedin_link}}" class="fa fa-linkedin"></a></li>
                                @endif

                                @if($website_data->instagram_link!=null)
                                    <li><a href="{{$website_data->instagram_link}}" class="fa fa-instagram"></a></li>
                                @endif

                                @if($website_data->youtube_link!=null)
                                    <li><a href="{{$website_data->youtube_link}}" class="fa fa-youtube"></a></li>
                                @endif
                            </ul>
                        </div>

                        <?php $our_services = get_module('name', 'Products'); ?>
                        <div class="col-lg-4 col-md-8">
                            <div class="widget widget_services">
                                <h3 class="widget-title">{{$our_services->name}}</h3>
                                <ul>
                                    @php $point_count = 0; @endphp
                                    @foreach($our_services->modules_data as $module)
                                        @if($module->status!='blocked')
                                            <li>
                                                <a href="{{route('product.details',$module->slug)}}">{{$module->title}}</a>
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </div>
                        </div>

                    </div>

                    @if(0)
                    <div class="widget widget_newsletter">
                        <h3 class="widget-title">Newsletter</h3>
                        <p>Subscribe to our newsletter to receive latest news on our services.</p>
                        <div class="newsletter-input">
                            <div class="input-group">
                                <input id="email" type="text" class="form-control" name="email" placeholder="Enter your email">
                                <div class="input-group-append">
                                    <button type="submit" class="input-group-text nl-search-btn text-black site-bg-primary title-style-2">Subscribe</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endif

                </div>

            </div>
        </div>
    </div>
    <!-- FOOTER COPYRIGHT -->

    <div class="footer-bottom">
        <div class="container">
            
            @if(0)
                <div class="wt-footer-bot-left d-flex justify-content-between">
                    <span class="copyrights-text">Copyright © <?= date('Y'); ?> <span class="site-text-primary">{{$website_data->website_name}}</span></span>
                    <!-- <ul class="copyrights-nav">
                        <li><a href="javascript:void(0);">Terms &amp; Condition</a></li>
                        <li><a href="javascript:void(0);">Privacy Policy</a></li>
                        <li><a href="contact-1.html">Contact Us</a></li>
                    </ul> -->
                    <?php $managed_by = (Object) get_widget_data('title', 'Managed By'); ?>
                    <div class="our-watermark">
                        <span class="name">{{$managed_by->name}}</span>
                        <a href="{{$managed_by->link}}" target="_blank" class="link">{{$managed_by->description}}</a>
                    </div>
                </div>
            @endif
            
            <div class="wt-footer-bot-left">
                <span class="copyrights-text">Copyright © <?= date('Y'); ?> <span class="site-text-primary">{{$website_data->website_name}}</span></span>
            </div>
            <div class="wt-footer-bot-right">
                <?php $managed_by = (Object) get_widget_data('title', 'Managed By'); ?>
                <div class="our-watermark">
                    <span class="name">{{$managed_by->name}}</span>
                    <a href="{{$managed_by->link}}" target="_blank" class="link">{{$managed_by->description}}</a>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- FOOTER END -->