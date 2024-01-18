<!-- HEADER START -->

<?php $website_data = (object) get_widget_data('title', 'General Settings', 'title', 'Social Links'); ?>
<?php $topbar = (object) get_widget_data('title', 'Website Topbar'); ?>

<header class="site-header header-style-1 mobile-sider-drawer-menu">
  <!-- SITE Search -->
  <div id="search-toggle-block">
    <div id="search">
      <form role="search" id="searchform" action="/search" method="get" class="radius-xl">
        <div class="input-group">
          <input class="form-control" value="" name="q" type="search" placeholder="Type to search" />
          <span class="input-group-append"><button type="button" class="search-btn"><i class="fa fa-search"></i></button></span>
        </div>
      </form>
    </div>
  </div>

  <div class="container header-middle clearfix">
    <div class="main-logo logo-header">
      <div class="logo-header-inner logo-header-one">
        <a href="{{config('app.url')}}" class="custom-logo">
          <img src="{{asset('images/thumb/'.$website_data->header_logo)}}" alt="{{$website_data->website_name}}" />
        </a>
      </div>
    </div>

    <div class="header-info">
      <ul class="custom-center">
        <li>
          <div class="icon-md">
            <!-- <span class="icon-cell">
              <i class="flaticon-trophy"></i>
            </span> -->
            <img src="{{asset('images/'.$topbar->left_image)}}" alt="{{$topbar->left_title}}" />
          </div>
          <div class="icon-content">
            <strong>{{$topbar->left_title}}</strong>
            <span>{{$topbar->left_description}}</span>
          </div>
        </li>
        <li>
          <div class="icon-md">
            <!-- <span class="icon-cell">
              <i class="flaticon-stamp"></i>
            </span> -->
            <img src="{{asset('images/'.$topbar->right_image)}}" alt="{{$topbar->right_title}}" />
          </div>
          <div class="icon-content">
            <strong>{{$topbar->right_title}}</strong>
            <span>{{$topbar->right_description}}</span>
          </div>
        </li>
      </ul>
    </div>

  </div>

  <div class="sticky-header main-bar-wraper  navbar-expand-lg">
    <div class="main-bar">
      <div class="container clearfix custom-pading">
        <!-- NAV Toggle Button -->
        <button id="mobile-side-drawer" data-target=".header-nav" data-toggle="collapse" type="button" class="navbar-toggler collapsed">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar icon-bar-first"></span>
          <span class="icon-bar icon-bar-two"></span>
          <span class="icon-bar icon-bar-three"></span>
        </button>

        <div class="extra-logo logo-header">
            <a href="{{config('app.url')}}" class="custom-logo">
              <img src="{{asset('images/thumb/'.$website_data->header_logo)}}" alt="{{$website_data->website_name}}" />
            </a>
        </div>

        <!-- MAIN NAV -->
        <div class="nav-animation header-nav navbar-collapse collapse d-flex justify-content-center">
          <ul class="nav navbar-nav">
            @foreach(get_nav() as $nav)
              @if($nav->post_id!=null)
                @if( $nav->ModulesData->status =='active' )
                  @php $nav_sub_menu = get_nav($nav->id,1); @endphp
                  @if(count($nav_sub_menu)>0)
                    <!-- <li  onclick="showDrop(this)"> -->
                    <li class="has-child">
                      <a href="javascript:void(0)">{{$nav->title}}</a>
                      <ul class="sub-menu">
                        @foreach($nav_sub_menu as $subnav)
                          @if( $subnav->post_id == null )
                            <li>
                              <a href="{{ ($subnav->menu_is!='internal') ? $subnav->slug : url($subnav->slug) }}">{{$subnav->title}}</a>
                            </li>
                          @elseif( $subnav->ModulesData->status =='active' )
                            <li>
                              <a href="{{ ($subnav->menu_is!='internal') ? $subnav->ModulesData->slug : url($subnav->ModulesData->slug) }}">{{$subnav->title}}</a>
                            </li>
                          @endif
                        @endforeach
                      </ul>
                    </li>
                  @else
                    <li>
                      <a href="{{ ($nav->menu_is!='internal') ? $nav->ModulesData->slug : url($nav->ModulesData->slug) }}">{{$nav->title}}</a>
                    <li>
                  @endif
                @endif
              @else
                <li>
                  <a href="{{ ($nav->menu_is!='internal') ? $nav->slug : url($nav->slug) }}">{{$nav->title}}</a>
                </li>
              @endif
            @endforeach
          </ul>
        </div>
        <!-- MAIN NAV -->
        
        <div class="header-nav-request">
          <a href="#" class="contact-slide-show">Contact Us <i class="fa fa-angle-right"></i></a>
        </div>
      </div>
    </div>
  </div>
</header>
<style>
  @media only screen and (max-width: 991px){
    .header-middle{
      display: none;
    }
    .extra-logo{
      display: inline-block;
    }
  }
</style>
<script type="text/javascript">
    document.querySelectorAll('.has-child').forEach(function(elm){
      elm.addEventListener('click', function(ell){
        // ell.currentTarget.querySelector('.submenu-toogle').click();
      });
    });
</script>
<!-- HEADER END -->