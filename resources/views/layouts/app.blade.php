<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
   <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- CSRF Token -->
      
    <link rel="shortcut icon" href="{{asset('images/'.widget(13)->extra_image_1)}}">  
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{$cms->meta_title ?? widget(1)->extra_field_1 }}</title>
    <meta name="description" content="{{$cms->meta_description ?? widget(1)->description}}" />
    <meta property="og:description" content="{{$cms->meta_description ?? widget(1)->description}}" />
    <meta property="og:image" content="{{ isset($cms->image)? (asset('images/'.$cms->image)):(asset('images/'.widget(1)->extra_image_1)) }}">
    
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
	<link href="{{asset('css/all.css')}}" rel="stylesheet">
	<link href="{{asset('css/owl.carousel.css')}}" rel="stylesheet">
	<!-- <link rel="stylesheet" href="css/switcher.css"> -->
	<link rel="stylesheet" href="{{asset('rsplugin/css/settings.css')}}">
	<!-- Jquery Fancybox CSS -->
	<link rel="stylesheet" type="text/css" href="{{asset('css/jquery.fancybox.min.css')}}" media="screen" />
	<link href="{{asset('css/animate.css')}}" rel="stylesheet">
	<link href="{{asset('css/style.css')}}" rel="stylesheet"  id="colors">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="{{asset('admin/assets/pages/notification/notification.css')}}">
	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
	  <link href="{{asset('admin/bower_components/jquery.filer/css/jquery.filer.css')}}" type="text/css" rel="stylesheet" />
    <link href="{{asset('admin/bower_components/jquery.filer/css/themes/jquery.filer-dragdropbox-theme.css')}}" type="text/css" rel="stylesheet" />
    <link href="{{asset('css/select2.min.css')}}" rel="stylesheet" />

    @stack('css')

    <script type="text/javascript">
      var base_url = "{!!url('/')!!}"
    </script>
    
    <!-- Google tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-2XFF8RKP1B">
    </script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'G-2XFF8RKP1B');
    </script>

   </head>
   <body>
   	@include('includes.topbar')
   	@yield('content')
   	@include('includes.footer')
   	<script src="{{asset('js/jquery.min.js')}}"></script> 
	<script src="{{asset('js/bootstrap.min.js')}}"></script> 
	<script src="{{asset('js/popper.min.js')}}"></script> 
	<script src="{{asset('rsplugin/js/jquery.themepunch.tools.min.js')}}"></script> 
	<script src="{{asset('rsplugin/js/jquery.themepunch.revolution.min.js')}}"></script> 
	<!-- Jquery Fancybox --> 
	<script src="{{asset('js/jquery.fancybox.min.js')}}"></script> 
	<!-- Animate js --> 
	<script src="{{asset('js/animate.js')}}"></script> 
	<script>
	  new WOW().init();
	</script> 
	<!-- WOW file --> 
	<script src="{{asset('js/wow.js')}}"></script> 
	<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
	<!-- general script file --> 
	<script src="{{asset('js/owl.carousel.js')}}"></script> 
	<script src="{{asset('admin/bower_components/jquery.filer/js/jquery.filer.min.js')}}"></script>
	<script src="{{asset('js/select2.min.js')}}"></script>
	<script src="{{asset('js/script.js')}}"></script>
	<script type="text/javascript" src="{{asset('admin/assets/js/bootstrap-growl.min.js')}}"></script>
	@stack('js')
	
	<!-- Begin Linktree conversion tracking code -->
    <script>
    (function (l, i, n, k, t, r, ee) {
      l[t] = l[t] || function () { (l[t].q = l[t].q || []).push(arguments) },
      l[t].l = 1 * new Date(); r = i.createElement(n); ee = i.getElementsByTagName(n)[0];
      r.async = 1; r.src = k; ee.parentNode.insertBefore(r, ee)
    })
    (window, document, 'script', 'https://assets.production.linktr.ee/ltpixel/ltpix.min.js?t=' + 864e5*Math.ceil(new Date/864e5), 'lti')
    </script>
    <script>
      lti('init', 'LTU-f2c09f8b-9c64-4545-ab0a-7173ea559baa')
      lti('pageloaded')
    </script>
    <!-- End Linktree conversion tracking code -->

   </body>
</html>