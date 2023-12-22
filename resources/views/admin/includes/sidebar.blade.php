<?php $loged_in_user = Auth::guard('admin')->user(); ?>
<nav class="pcoded-navbar" pcoded-header-position="relative">
   <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
   <div class="pcoded-inner-navbar main-menu">
      <div class="">
         <div class="main-menu-header">
            <img class="img-40" src="{{asset('admin/assets/images/user.png')}}" alt="User-Profile-Image">
            <div class="user-details">
               <span>{{$loged_in_user->name}}</span>
            </div>
         </div>
         <div class="main-menu-content">
            <ul>
               <li class="more-details">
                  <a href="#!"><i class="ti-layout-sidebar-left"></i>{{__('Logout')}}</a>
               </li>
            </ul>
         </div>
      </div>
      <div class="pcoded-navigatio-lavel" data-i18n="nav.category.navigation" menu-title-theme="theme5">{{__('Navigation')}}</div>
      <ul class="pcoded-item pcoded-left-item">

         <li class=" ">
            <a href="{{url('/admin/home')}}" data-i18n="nav.form-wizard.main">
               <span class="pcoded-micon"><i class="ti-home"></i></span>
               <span class="pcoded-mtext">{{__('Dashboard')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
         </li>
         @if($loged_in_user->superadmin==true)

         <li class="pcoded-hasmenu {{(in_array(Route::currentRouteName(),['admin.admin.add', 'admin.admins'])) ? 'pcoded-trigger active' : null }}">
            <a href="javascript:void(0)" data-i18n="nav.navigate.main">
               <span class="pcoded-micon"><i class="ti-cloud-up"></i></span>
               <span class="pcoded-mtext">{{__('Admins')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class="{{(Request::route()->getName()=='admin.admins') ? 'active' : null; }}">
                  <a href="{{route('admin.admins')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Admins')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class="{{(Route::currentRouteName()=='admin.admin.add') ? 'active' : null }}">
                  <a href="{{route('admin.admin.add')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New Admin')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)" data-i18n="nav.navigate.main">
               <span class="pcoded-micon"><i class="ti-cloud-up"></i></span>
               <span class="pcoded-mtext">{{__('Students')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{route('admin.students')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Students')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.students.add')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New Student')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)" data-i18n="nav.navigate.main">
               <span class="pcoded-micon"><i class="ti-cloud-up"></i></span>
               <span class="pcoded-mtext">{{__('Applicants')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{route('admin.applicants-data')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Applicants')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>

            </ul>
         </li>

         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)" data-i18n="nav.navigate.main">
               <span class="pcoded-micon"><i class="ti-cloud-up"></i></span>
               <span class="pcoded-mtext">{{__('Jobs')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{route('admin.modules.data','jobs')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Jobs')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data','job-types')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Job Types')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data','job-roles')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Job Roles')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data','job-qualifications')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Job Qualifications')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data','job-experiences')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Job Experiences')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data','career-levels')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Job Career Levels')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data','gender')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Genders')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>

            </ul>
         </li>

         <li class="pcoded-hasmenu {{(in_array(Route::currentRouteName(),['admin.modules.add','admin.modules'])) ? 'pcoded-trigger active' : null }}">
            <a href="javascript:void(0)">
               <span class="pcoded-micon"><i class="ti-layout"></i></span>
               <span class="pcoded-mtext" data-i18n="nav.page_layout.main">{{__('Modules/Pages')}}</span>
               <span class="pcoded-badge label label-warning d-none">{{__('NEW')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class="{{(Route::currentRouteName()=='admin.modules') ? 'active' : null }}">
                  <a href="{{route('admin.modules')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" {{Route::currentRouteName()}} {{(Route::currentRouteName()=='admin.modules.add') ? 'active' : null }}">
                  <a href="{{route('admin.modules.add')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         @endif

         <li class="pcoded-hasmenu  {{( (request()->segment(1)=='admin') && (request()->segment(2)=='cms-pages') ) ? 'pcoded-trigger active' : null }}">
            <a href="javascript:void(0)">
               <span class="pcoded-micon"><i class="ti-layout"></i></span>
               <span class="pcoded-mtext" data-i18n="nav.page_layout.main">{{__('Cms Pages')}}</span>
               <span class="pcoded-badge label label-warning d-none">{{__('NEW')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class="{{( (request()->segment(1)=='admin') && (request()->segment(2)=='cms-pages') && (request()->segment(3)!='add') ) ? 'active' : null }}">
                  <a href="{{route('admin.modules.data','cms-pages')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Pages')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class="{{( (request()->segment(1)=='admin') && (request()->segment(2)=='cms-pages') && (request()->segment(3)=='add') ) ? 'active' : null }}">
                  <a href="{{route('admin.modules.data.add','cms-pages')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New Page')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)" data-i18n="nav.navigate.main">
               <span class="pcoded-micon"><i class="ti-view-grid"></i></span>
               <span class="pcoded-mtext">{{__('Popular Classes')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{route('admin.modules.data','popular-classes')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Classes')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data.add','popular-classes')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New Class')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)" data-i18n="nav.navigate.main">
               <span class="pcoded-micon"><i class="ti-user"></i></span>
               <span class="pcoded-mtext">{{__('School Teachers')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{route('admin.modules.data','school-teacher')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List School Teachers')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data.add','school-teacher')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New Teacher')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu {{(in_array(url()->full(),[URL::to('/admin/home-slider'),URL::to('/admin/home-slider/add')])) ? 'pcoded-trigger active' : null }}">
            <a href="javascript:void(0)" data-i18n="nav.navigate.main">
               <span class="pcoded-micon"><i class="ti-cloud-up"></i></span>
               <span class="pcoded-mtext">{{__('Sliders')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class="{{(url()->full()==URL::to('/admin/home-slider')) ? 'active' : null }}">
                  <a href="{{route('admin.modules.data','home-slider')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Slide Images')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class="{{(url()->full()==URL::to('/admin/home-slider/add')) ? 'active' : null }}">
                  <a href="{{route('admin.modules.data.add','home-slider')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New Slide Image')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu {{(in_array(url()->full(),[URL::to('/admin/blogs'),URL::to('/admin/blogs/add')])) ? 'pcoded-trigger active' : null }}">
            <a href="javascript:void(0)" data-i18n="nav.navigate.main">
               <span class="pcoded-micon"><i class="ti-layout-cta-right"></i></span>
               <span class="pcoded-mtext">{{__('Blogs')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class="{{(url()->full()==URL::to('/admin/blogs')) ? 'active' : null }}">
                  <a href="{{route('admin.modules.data','blogs')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Blogs')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class="{{(url()->full()==URL::to('/admin/blogs/add')) ? 'active' : null }}">
                  <a href="{{route('admin.modules.data.add','blogs')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New Blog')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)">
               <span class="pcoded-micon"><i class="ti-time"></i></span>
               <span class="pcoded-mtext" data-i18n="nav.page_layout.main">{{__('Blog Categories')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{url('/admin/blog-categories')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{url('/admin/blogs/add')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         @if($loged_in_user->superadmin==true)

         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)" data-i18n="nav.navigate.main">
               <span class="pcoded-micon"><i class="ti-view-grid"></i></span>
               <span class="pcoded-mtext">{{__('News Letters')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{route('admin.modules.data','news-letters')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List News Letters')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data.add','news-letters')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New News Letter')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)" data-i18n="nav.navigate.main">
               <span class="pcoded-micon"><i class="ti-view-grid"></i></span>
               <span class="pcoded-mtext">{{__('Countries')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{route('admin.modules.data','countries')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Countries')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data.add','countries')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New Country')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)" data-i18n="nav.navigate.main">
               <span class="pcoded-micon"><i class="ti-view-grid"></i></span>
               <span class="pcoded-mtext">{{__('States')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{route('admin.modules.data','states')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List States')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data.add','states')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New State')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)" data-i18n="nav.navigate.main">
               <span class="pcoded-micon"><i class="ti-view-grid"></i></span>
               <span class="pcoded-mtext">{{__('Cities')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{route('admin.modules.data','cities')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Cities')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data.add','cities')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New City')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu {{(in_array(Route::currentRouteName(),['admin.tags.add','admin.tags'])) ? 'pcoded-trigger active' : null }}">
            <a href="javascript:void(0)">
               <span class="pcoded-micon"><i class="ti-layout-sidebar-left"></i></span>
               <span class="pcoded-mtext" data-i18n="nav.page_layout.main">{{__('Site Tags')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class="{{(Route::currentRouteName()=='admin.tags') ? 'active' : null }}">
                  <a href="{{route('admin.tags')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Tags')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class="{{(Route::currentRouteName()=='admin.tags.add') ? 'active' : null }}">
                  <a href="{{route('admin.tags.add')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New Tag')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu {{(in_array(Route::currentRouteName(),['admin.menus','admin.menus.add'])) ? 'pcoded-trigger active' : null }}">
            <a href="javascript:void(0)">
               <span class="pcoded-micon"><i class="ti-direction-alt"></i></span>
               <span class="pcoded-mtext" data-i18n="nav.page_layout.main">{{__('Site Menus')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class="{{(Route::currentRouteName()=='admin.menus') ? 'active' : null }}">
                  <a href="{{route('admin.menus')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Menus')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class="{{(Route::currentRouteName()=='admin.menus.add') ? 'active' : null }}">
                  <a href="{{route('admin.menus.add')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New Menu')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)">
               <span class="pcoded-micon"><i class="ti-direction-alt"></i></span>
               <span class="pcoded-mtext" data-i18n="nav.page_layout.main">{{__('Site Modules Seo')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{route('admin.modules.data','modules-seo-management')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Seo')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu {{(in_array(Route::currentRouteName(),['admin.widgets.add', 'admin.widgets'])) ? 'pcoded-trigger active' : null }}">
            <a href="javascript:void(0)">
               <span class="pcoded-micon"><i class="ti-direction-alt"></i></span>
               <span class="pcoded-mtext" data-i18n="nav.page_layout.main">{{__('Widgets')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class="{{(Request::route()->getName()=='admin.widgets') ? 'active' : null; }}">
                  <a href="{{route('admin.widgets')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class="{{(Request::route()->getName()=='admin.widgets.add') ? 'active' : null; }}">
                  <a href="{{route('admin.widgets.add')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>
         @endif

         @if(0)
         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)">
               <span class="pcoded-micon"><i class="ti-time"></i></span>
               <span class="pcoded-mtext" data-i18n="nav.page_layout.main">{{__('Opening Hours')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{route('admin.modules.data','opening-hours')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Days')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data.add','opening-hours')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New Day Timing')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>
         @endif

         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)">
               <span class="pcoded-micon"><i class="ti-gallery"></i></span>
               <span class="pcoded-mtext" data-i18n="nav.page_layout.main">{{__('Gallery')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{route('admin.modules.data','photo-gallery')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Gallery')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data.add','photo-gallery')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New Gallery')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         <li class="pcoded-hasmenu">
            <a href="javascript:void(0)">
               <span class="pcoded-micon"><i class="ti-quote-left"></i></span>

               <span class="pcoded-mtext" data-i18n="nav.page_layout.main">{{__('Testimonials')}}</span>

               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <li class=" ">
                  <a href="{{route('admin.modules.data','testimonials')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('List Testimonials')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               <li class=" ">
                  <a href="{{route('admin.modules.data.add','testimonials')}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{__('Add New Testimonial')}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
            </ul>
         </li>

         @if($loged_in_user->superadmin==true)
         <li class="pcoded-hasmenu {{( (request()->segment(1)=='admin') && (request()->segment(2)=='page') ) ? 'pcoded-trigger active' : null }}">
            <a href="javascript:void(0)" data-i18n="nav.navigate.main">
               <span class="pcoded-micon"><i class="ti-settings"></i></span>
               <span class="pcoded-mtext">{{__('Settings')}}</span>
               <span class="pcoded-mcaret"></span>
            </a>
            <ul class="pcoded-submenu">
               <?php $w_pages = App\Models\WidgetPages::where('status', 'active')->get(); ?>
               @if(null!==($w_pages))
               @foreach($w_pages as $w_p)
               <li class=" {{ (request()->segment(3) == $w_p->slug ) ? 'active' : null }}">
                  <a href="{{route('admin.widgets_data',$w_p->slug)}}" data-i18n="nav.navigate.navbar">
                     <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                     <span class="pcoded-mtext">{{$w_p->title}}</span>
                     <span class="pcoded-mcaret"></span>
                  </a>
               </li>
               @endforeach
               @endif
            </ul>
         </li>
         @endif
      </ul>
   </div>
</nav>