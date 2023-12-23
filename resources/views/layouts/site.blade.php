<!DOCTYPE html>
<html lang="en">
<head>
    <?php $website_data = (object) get_widget_data('title', 'General Settings', 'title', 'Social Links'); ?>
    <!-- META -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="HODU Application Development Unit, HODU Solutions Pvt. Ltd." />
    @if(config('app.env')=='production')
    <meta name="robots" content="follow, index"/>
    @else
    <meta name="robots" content="nofollow, noindex"/>
    @endif
    <meta name="description" content="{{$cms->meta_description ?? ''}}" />  @if(0)<meta name="keywords" content="{{$cms->meta_keywords ?? ''}}" />@endif
    
    <meta property="og:description" content="{{$cms->meta_description ?? $website_data->widget_1_description}}" />
    <meta property="og:image" content="{{ isset($cms->image)? (asset('images/'.$cms->image)):(asset('images/'.$website_data->favicon)) }}">
    <!-- FAVICONS ICON -->
    <link rel="icon" href="{{asset('images/'.$website_data->favicon)}}" type="image/x-icon" />
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('images/'.$website_data->favicon)}}" />
    <!-- PAGE TITLE HERE -->
    @if(0) <title>{{$cms->meta_title ??''; }} {{' | '.$website_data->website_name;}}</title> @else <title>{{$cms->meta_title ??''; }}</title> @endif
    <!-- MOBILE SPECIFIC -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- BOOTSTRAP STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('ajanta-resource/css/bootstrap.min.css')}}">
    <!-- FONTAWESOME STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('ajanta-resource/css/fontawesome/css/font-awesome.min.css')}}" />
    <!-- OWL CAROUSEL STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('ajanta-resource/css/owl.carousel.min.css')}}">
    <!-- BOOTSTRAP SLECT BOX STYLE SHEET  -->
    <link rel="stylesheet" type="text/css" href="{{asset('ajanta-resource/css/bootstrap-select.min.css')}}">
    <!-- MAGNIFIC POPUP STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('ajanta-resource/css/magnific-popup.min.css')}}">
    <!-- LOADER STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('ajanta-resource/css/loader.min.css')}}">
    <!-- MAIN STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('ajanta-resource/css/style.css')}}">
    <!-- FLATICON STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('ajanta-resource/css/flaticon.min.css')}}">
    <!-- IMAGE POPUP -->
    <link rel="stylesheet" type="text/css" href="{{asset('ajanta-resource/css/lc_lightbox.css')}}" />
    <!-- THEME COLOR CHANGE STYLE SHEET -->
    <link rel="stylesheet" class="skin" type="text/css" href="{{asset('ajanta-resource/css/skin/skin-default.css')}}">
    <!-- SIDE SWITCHER STYLE SHEET -->
    <link rel="stylesheet" type="text/css" href="{{asset('ajanta-resource/css/switcher.css')}}">
    <!-- REVOLUTION SLIDER CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('ajanta-resource/plugins/revolution/revolution/css/settings.css')}}">
    <!-- REVOLUTION NAVIGATION STYLE -->
    <link rel="stylesheet" type="text/css" href="{{asset('ajanta-resource/plugins/revolution/revolution/css/navigation.css')}}">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Teko:300,400,500,600,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900&display=swap" rel="stylesheet">

    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

    <script type="text/javascript">
        var base_url = "{!!url('/')!!}"
    </script>
    @stack('css')
</head>
<body>
    <div class="page-wraper">
        @include('includes.topbar')
        @yield('content')
        @include('includes.footer')
        <!-- Get In Touch -->
        <div class="contact-slide-hide bg-cover bg-no-repeat" style="background-image:url('{{asset('ajanta-resource/images/background/contact-bg.jpg')}}'); background-repeat: no-repeat; background-size: 100% 100%;">
            <div class="contact-nav">
                <a href="javascript:void(0)" class="contact_close">&times;</a>
                <div class="contact-nav-form">
                    <div class="contact-nav-info bg-white p-a30 bg-center bg-no-repeat" style="background-image:url('{{asset('ajanta-resource/images/background/bg-map2.png')}}');">
                        <div class="row">
                            <div class="col-lg-4 col-md-4">
                                <div class="contact-nav-media-section">
                                    <div class="contact-nav-media">
                                        <img src="{{asset('ajanta-resource/images/background/contact-user.jpg')}}" alt="Contact Us">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-8">
                                <form class="cons-contact-form" method="post" action="{{route('contact.request')}}">
                                    @csrf
                                    <div class="section-head left wt-small-separator-outer">
                                        <div class="wt-small-separator site-text-primary">
                                            <div class="sep-leaf-left"></div>
                                            <div>Contact Form</div>
                                            <div class="sep-leaf-right"></div>
                                        </div>
                                        <h2 data-title="">Get In Touch</h2>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-lg-6 col-md-6">
                                            <input name="name" type="text" class="form-control" placeholder="Name*">
                                            <small data-name></small>
                                        </div>
                                        <div class="form-group col-sm-6 col-md-6 col-lg-6">
                                            <input type="text" class="form-control" id="company" name="company" placeholder="Company: *">
                                            <small data-company></small>
                                        </div>
                                        <div class="form-group col-lg-6 col-md-6">
                                            <input name="email" type="text" class="form-control" placeholder="Email*">                                            
                                            <small data-email></small>
                                        </div>
                                        <div class="form-group col-lg-6 col-md-6">
                                            <input name="phone" type="text" class="form-control" placeholder="Phone*">
                                            <small data-phone></small>
                                        </div>
                                        <div class="form-group col-lg-12 col-md-12">
                                            <input name="subject" type="text" class="form-control" placeholder="Subject*">
                                            <small data-subject></small>
                                        </div>
                                        <div class="form-group col-sm-12 col-md-12 col-lg-12">
                                            <textarea class="form-control" rows="3" id="address" name="address" placeholder="Address: *"></textarea>
                                            <small data-address></small>
                                        </div>
                                       
                                        <div class="form-group col-lg-12 col-md-12">
                                            <textarea name="message" class="form-control" rows="3" placeholder="Message*"></textarea>
                                            <small data-message></small>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="error-areaa"></div>
                                        </div>
                                        
                                        <div class="col-md-12 d-flex">
                                            <button type="submit" class="site-button site-btn-effect">
                                                Submit <div class="d-none spinner-border text-light spinner-border-sm" role="status"></div>
                                            </button>
                                            <div class="g-recaptcha ml-5" data-sitekey="6Lc1YBEpAAAAAMTVF-79SdCRRila1Gn-FpuVmG2M"></div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- BUTTON TOP START -->
        <button class="scroltop"><span class="fa fa-angle-up  relative" id="btn-vibrate"></span></button>
    </div>
    <!-- LOADING AREA START ===== -->
    <div class="loading-area">
        <div class="loading-box"></div>
        <div class="loading-pic">
            <div class="loader">
                <span class="block-1"></span>
                <span class="block-2"></span>
                <span class="block-3"></span>
                <span class="block-4"></span>
                <span class="block-5"></span>
                <span class="block-6"></span>
                <span class="block-7"></span>
                <span class="block-8"></span>
                <span class="block-9"></span>
                <span class="block-10"></span>
                <span class="block-11"></span>
                <span class="block-12"></span>
                <span class="block-13"></span>
                <span class="block-14"></span>
                <span class="block-15"></span>
                <span class="block-16"></span>
            </div>
        </div>
    </div>
    <!-- LOADING AREA  END ====== -->
    <!-- JAVASCRIPT  FILES ========================================= -->
    <script src="{{asset('ajanta-resource/js/jquery-2.2.0.min.js')}}"></script><!-- JQUERY.MIN JS -->
    <script src="{{asset('ajanta-resource/js/popper.min.js')}}"></script><!-- POPPER.MIN JS -->
    <script src="{{asset('ajanta-resource/js/bootstrap.min.js')}}"></script><!-- BOOTSTRAP.MIN JS -->
    <script src="{{asset('ajanta-resource/js/bootstrap-select.min.js')}}"></script><!-- Form js -->
    <script src="{{asset('ajanta-resource/js/magnific-popup.min.js')}}"></script><!-- MAGNIFIC-POPUP JS -->
    <script src="{{asset('ajanta-resource/js/waypoints.min.js')}}"></script><!-- WAYPOINTS JS -->
    <script src="{{asset('ajanta-resource/js/counterup.min.js')}}"></script><!-- COUNTERUP JS -->
    <script src="{{asset('ajanta-resource/js/waypoints-sticky.min.js')}}"></script><!-- STICKY HEADER -->
    <script src="{{asset('ajanta-resource/js/isotope.pkgd.min.js')}}"></script><!-- MASONRY  -->
    <script src="{{asset('ajanta-resource/js/owl.carousel.min.js')}}"></script><!-- OWL  SLIDER  -->
    <script src="{{asset('ajanta-resource/js/stellar.min.js')}}"></script><!-- PARALLAX BG IMAGE   -->
    <script src="{{asset('ajanta-resource/js/theia-sticky-sidebar.js')}}"></script><!-- STICKY SIDEBAR  -->
    <script src="{{asset('ajanta-resource/js/jquery.bootstrap-touchspin.js')}}"></script><!-- FORM JS -->
    <script src="{{asset('ajanta-resource/js/custom.js')}}"></script><!-- CUSTOM FUCTIONS  -->
    <script src="{{asset('ajanta-resource/js/lc_lightbox.lite.js')}}"></script><!-- IMAGE POPUP -->
    <script src="{{asset('ajanta-resource/js/switcher.js')}}"></script><!-- SHORTCODE FUCTIONS  -->
    <!-- REVOLUTION JS FILES -->
    <script src="{{asset('ajanta-resource/plugins/revolution/revolution/js/jquery.themepunch.tools.min.js')}}"></script>
    <script src="{{asset('ajanta-resource/plugins/revolution/revolution/js/jquery.themepunch.revolution.min.js')}}"></script>
    <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->
    <script src="{{asset('ajanta-resource/plugins/revolution/revolution/js/extensions/revolution-plugin.js')}}"></script>
    <!-- REVOLUTION SLIDER SCRIPT FILES -->
    <script src="{{asset('ajanta-resource/js/rev-script-5.js')}}"></script>
    @if(0)
    <!-- STYLE SWITCHER  ======= -->
    <div class="styleswitcher">
        <div class="switcher-btn-bx">
            <a class="switch-btn">
                <span class="fa fa-cog fa-spin"></span>
            </a>
        </div>
        <div class="styleswitcher-inner">
            <h6 class="switcher-title">Color Skin</h6>
            <ul class="color-skins">
                <li><a class="theme-skin skin-1" href="{{asset('?theme=css/skin/skin-1')}}"></a></li>
                <li><a class="theme-skin skin-2" href="{{asset('?theme=css/skin/skin-2')}}"></a></li>
                <li><a class="theme-skin skin-3" href="{{asset('?theme=css/skin/skin-3')}}"></a></li>
                <li><a class="theme-skin skin-4" href="{{asset('?theme=css/skin/skin-4')}}"></a></li>
                <li><a class="theme-skin skin-5" href="{{asset('?theme=css/skin/skin-5')}}"></a></li>
                <li><a class="theme-skin skin-6" href="{{asset('?theme=css/skin/skin-6')}}"></a></li>
                <li><a class="theme-skin skin-7" href="{{asset('?theme=css/skin/skin-7')}}"></a></li>
                <li><a class="theme-skin skin-8" href="{{asset('?theme=css/skin/skin-8')}}"></a></li>
                <li><a class="theme-skin skin-9" href="{{asset('?theme=css/skin/skin-9')}}"></a></li>
                <li><a class="theme-skin skin-10" href="{{asset('?theme=css/skin/skin-10')}}"></a></li>
                <li><a class="theme-skin skin-11" href="{{asset('?theme=css/skin/skin-11')}}"></a></li>
                <li><a class="theme-skin skin-12" href="{{asset('?theme=css/skin/skin-12')}}"></a></li>
            </ul>
        </div>
    </div>
    <!-- STYLE SWITCHER END ==== -->
    @endif
    @stack('js')
    <!-- Begin Linktree conversion tracking code -->
    <!-- <script>
        (function (l, i, n, k, t, r, ee) {
        l[t] = l[t] || function () { (l[t].q = l[t].q || []).push(arguments) },
        l[t].l = 1 * new Date(); r = i.createElement(n); ee = i.getElementsByTagName(n)[0];
        r.async = 1; r.src = k; ee.parentNode.insertBefore(r, ee)
        })
        (window, document, 'script', 'https://assets.production.linktr.ee/ltpixel/ltpix.min.js?t=' + 864e5*Math.ceil(new Date/864e5), 'lti')
      lti('init', 'LTU-f2c09f8b-9c64-4545-ab0a-7173ea559baa')
      lti('pageloaded')
    </script> -->
    <!-- End Linktree conversion tracking code -->
</body>
</html>