@extends('layouts.site')
@section('content')
<style>
    @media only screen and (max-width: 991px) {
        .wt-bnr-inr {
            padding: unset;
        }
        .blog-navigation > nav div:nth-child(2){
            display: none !important;
        }
        .blog-navigation > nav div:nth-child(1){
            display: block !important;
        }
    }
    @media only screen and (min-width: 991px) {
        .blog-navigation > nav div:nth-child(1){
            display: none !important;
        }
        .blog-navigation > nav div:nth-child(2){
            display: block !important;
        }
    }
    .blog-navigation nav {
        display: flex;
        gap:20px;
        flex-direction: column;
        /* height: unset; */
    }
    .blog-navigation > nav:nth-child(2){
        display: flex;
        height: 40px;
        width: 40px;
    }
    .blog-navigation svg{
        height: 40px;
        width: 40px;
    }
    .blog-navigation > nav:nth-child(2) div:nth-child(2){
        display: flex;
        height: 40px;
        width: 40px;
    }
    /* .blog-navigation span[aria-current="page"]{} */
</style>
<!-- CONTENT START -->
<div class="page-content">
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
                        <li><a href="javascript:void(0);">categories</a></li>
                        <li><a href="{{$cms->title}}">{{$cms->title}}</a></li>
                    </ul>
                </div>
                <!-- BREADCRUMB ROW END -->
            </div>
        </div>
    </div>
        <!-- OUR BLOG START -->
        <div class="section-full  p-t80 p-b50 bg-white">
        <div class="container">
            <div class="section-content">
                <div class="row d-flex justify-content-center">

                    <!-- BLOG SECTION START -->
                    <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12">
                    @if(count($blogs_item) > 0)
                        @foreach($blogs_item as $blog)
                            <!--Block-->
                            <div class="blog-post date-style-2">
                                <div class="wt-post-media wt-img-effect zoom-slow">
                                    <a href="{{route('blogs.detail',$blog->slug)}}">
                                        <img src="{{asset('images/'.$blog->image)}}" alt="{{$blog->title}}">
                                    </a>
                                </div>
                                <div class="wt-post-info bg-white p-t30">
                                    <div class="wt-post-meta ">
                                        <ul>
                                            <li class="post-category"><span>{{get_cat($blog->category_ids)->title}}</span> </li>
                                            <li class="post-date">
                                                <!-- February 28, 2020 -->
                                                {{date('F d, Y',strtotime($blog->created_at))}}
                                            </li>
                                            <!-- <li class="post-comment">24 Comment</li> -->
                                        </ul>
                                    </div>
                                    <div class="wt-post-title ">
                                        <h3 class="post-title">
                                            <a href="{{route('blogs.detail',$blog->slug)}}" class="site-text-secondry">{{$blog->title}}</a>
                                        </h3>
                                    </div>
                                    <div class="wt-post-readmore ">
                                        <a href="{{route('blogs.detail',$blog->slug)}}" class="site-button-link black">Read More</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        @else
                            <div class="widget recent-posts-entry p-a20">
                                <h3>No Blog Found</h3>  
                            </div>
                        @endif
                        <diV class="blog-navigation">{{$blogs_item->links()}}</diV>
                    </div>
                    <!-- BLOG SECTION END -->

                    <!-- SIDE BAR START -->
                    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 rightSidebar  m-b30">
                        <aside class="side-bar">

                            <!-- SEARCH -->
                            <div class="widget p-a20">
                                <div class="search-bx">
                                    <form role="search" action="{{route('blogs.search.blogs')}}" method="post">
                                        @csrf
                                        <div class="input-group">
                                            <input name="keyword" type="text" class="form-control" placeholder="Write your text">
                                            <span class="input-group-btn">
                                                <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            
                            <!-- RECENT POSTS -->
                            <div class="widget recent-posts-entry p-a20">
                                <div class="text-left m-b30">
                                    <h3 class="widget-title">Recent Posts</h3>
                                </div>
                                <div class="section-content">
                                    <div class="widget-post-bx">
                                        @foreach($blogs_recent as $blog_recent)
                                            <div class="widget-post clearfix">
                                                <div class="wt-post-media">
                                                    <img src="{{asset('images/'.$blog_recent->image)}}" alt="{{$blog_recent->title}}">
                                                </div>
                                                <div class="wt-post-info">
                                                    <div class="wt-post-header">
                                                        <h6 class="post-title"> 
                                                            <a href="{{route('blogs.detail',$blog_recent->slug)}}">{{$blog_recent->title}}</a>
                                                        </h6>
                                                    </div>
                                                    <div class="wt-post-meta">
                                                        <ul>
                                                            <li class="post-author">{{date('d F',strtotime($blog_recent->created_at))}}</li>
                                                            <!-- <li class="post-comment">58 Comment</li> -->
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                            
                            <!-- CATEGORY -->
                            <div class="widget widget_services p-a20">
                                <div class="text-left m-b30">
                                    <h3 class="widget-title">{{ucfirst($cat->name)}}</h3>
                                </div>
                                <ul>
                                    @foreach($cat->modules_data as $category)
                                        <li>
                                            <a href="{{route('blogs.cat.blogs',$category->slug)}}">{{$category->title}}</a>
                                            <span class="badge">28</span>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                            <!-- TAGS -->
                            <div class="widget widget_tag_cloud p-a20">
                                <div class="text-left m-b30">
                                    <h3 class="widget-title">Tags</h3>
                                </div>
                                <div class="tagcloud">
                                    @foreach($tags as $tag)
                                        <a href="{{route('blogs.tag.blogs',$tag->slug)}}">{{$tag->title}}</a>
                                    @endforeach
                                </div>
                            </div>

                            <!-- Archives -->
                            <div class="widget widget_archives p-a20">
                                <div class="text-left m-b30">
                                    <h3 class="widget-title">Archives</h3>
                                </div>
                                <ul>
                                    @foreach($archives as $key => $archive)
                                        <li>
                                            <a href="{{route('blogs.archives.blogs',date('Y-m',strtotime($key)))}}">{{date('F, Y',strtotime($key))}}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                            @if(0)
                            <!-- Social -->
                            <div class="widget p-a20">
                                <div class="widget_social_inks">
                                    <ul class="social-icons social-square social-darkest social-md">
                                        <li><a href="javascript:void(0);" class="fa fa-facebook"></a></li>
                                        <li><a href="javascript:void(0);" class="fa fa-twitter"></a></li>
                                        <li><a href="javascript:void(0);" class="fa fa-linkedin"></a></li>
                                        <li><a href="javascript:void(0);" class="fa fa-rss"></a></li>
                                        <li><a href="javascript:void(0);" class="fa fa-youtube"></a></li>
                                        <li><a href="javascript:void(0);" class="fa fa-instagram"></a></li>
                                    </ul>
                                </div>
                            </div>
                            @endif
                        </aside>
                    </div>
                    <!-- SIDE BAR END -->
                </div>
            </div>
        </div>
    </div>
    <!-- OUR BLOG END -->
</div>
<!-- CONTENT END -->
@endsection