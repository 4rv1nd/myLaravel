@extends('layouts.site')

@section('content')
<style>
    @media only screen and (max-width: 991px) {
        .wt-bnr-inr {
            padding: unset;
        }
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
    <!-- CONTACT FORM -->
    <?php $website_data = (object) get_widget_data('title', 'General Settings', 'title', 'Social Links', 'Extra Emails'); ?>
    <div class="section-full  p-t80 p-b50 bg-cover bg-gray" >
        <div class="section-content">
            <div class="container">
                <div class="contact-one">
                    <!-- CONTACT FORM-->
                    <div class="row  d-flex justify-content-center flex-wrap">

                        <div class="col-lg-6 col-md-6 m-b30">
                            <form class="cons-contact-form" method="post" action="{{route('contact.post')}}">
                                @csrf
                                <!-- TITLE START -->
                                <div class="section-head left wt-small-separator-outer">
                                    <div class="wt-small-separator site-text-primary">
                                        <div class="sep-leaf-left"></div>
                                        <div>Contact Form</div>
                                        <div class="sep-leaf-right"></div>
                                    </div>
                                    <h2>Get In Touch</h2>
                                </div>
                                <!-- TITLE END -->

                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <input name="first_name" type="text" required class="form-control" placeholder="First Name*">
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <input name="last_name" type="text" required class="form-control" placeholder="Last Name">
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <input name="email" type="text" class="form-control" required placeholder="Email*">
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <input name="phone" type="text" class="form-control" required placeholder="Phone*">
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <input name="subject" type="text" class="form-control" required placeholder="Subject*">
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <textarea name="message" class="form-control" rows="4" placeholder="Message*"></textarea>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <button type="submit" class="site-button site-btn-effect">Submit Now</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="col-lg-6 col-md-6 m-b30">
                            <div class="contact-info">
                                <div class="contact-info-inner">

                                    <!-- TITLE START-->
                                    <div class="section-head left wt-small-separator-outer">
                                        <div class="wt-small-separator site-text-primary">
                                            <div class="sep-leaf-left"></div>
                                            <div>Contact info</div>
                                            <div class="sep-leaf-right"></div>
                                        </div>
                                        <h2>Our Full Info</h2>
                                    </div>
                                    <!-- TITLE END-->

                                    <div class="contact-info-section" style="background-image:url({{asset('ajanta-resource/images/background/bg-map2.png')}});">

                                        <div class="wt-icon-box-wraper left m-b30">

                                            <div class="icon-content">
                                                <h3 class="m-t0 site-text-primary">Phone number</h3>

                                                <p><a class="text-white" href="tel:{{$website_data->phone_number}}">{{$website_data->phone_number}}</a></p>
                                                <?php $contact_numbers = (object) get_widget_data('title', 'Contact Numbers'); ?>
                                                @foreach($contact_numbers as $key => $contact_number)
                                                    <p>
                                                        <b>{{ucfirst(str_replace('_',' ',$key))}} :</b>
                                                        <a class="text-white" href="tel:{{$contact_number}}">{{$contact_number}}</a>
                                                    </p>
                                                @endforeach
                                            </div>
                                        </div>

                                        <div class="wt-icon-box-wraper left m-b30">

                                            <div class="icon-content">
                                                <h3 class="m-t0 site-text-primary">Email address</h3>
                                                <p><a class="text-white" href="mailto:{{$website_data->email_address}}">{{$website_data->email_address}}</a></p>
                                                <?php $extra_emails = (object) get_widget_data('title', 'Extra Emails'); ?>
                                                @foreach($extra_emails as $key => $extra_email)
                                                    <p>
                                                        <b>{{ucfirst(str_replace('_',' ',$key))}} :</b>
                                                        <a class="text-white" href="mailto:{{$extra_email}}">{{$extra_email}}</a>
                                                    </p>
                                                @endforeach
                                            </div>
                                        </div>

                                        <div class="wt-icon-box-wraper left m-b30">

                                            <div class="icon-content">
                                                <h3 class="m-t0 site-text-primary">Address info</h3>
                                                <p>{{$website_data->address}}</p>
                                            </div>
                                        </div>

                                        <div class="wt-icon-box-wraper left">
                                            <div class="icon-content">
                                                <h3 class="m-t0 site-text-primary">Opening Hours</h3>
                                                <ul class="list-unstyled m-b0">
                                                    <li>{{$website_data->open_time}}</li>
                                                    <li>{{$website_data->close_day}}</li>
                                                    <!-- <li>Mon-Fri: 9 am – 6 pm</li>
                                                            <li>Saturday: 9 am – 4 pm</li>
                                                            <li>Sunday: Closed</li> -->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- GOOGLE MAP -->
    <div class="section-full bg-white p-tb80">
        <div class="section-content">
            <div class="container">
                <div class="gmap-outline">
                    <div class="mapouter">
                        <div class="gmap_canvas"><iframe width="1080" height="600" id="gmap_canvas" src="https://maps.google.com/maps?q=812/E-9,%20RIICO%20INDUSTRIAL%20AREA&t=k&z=17&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                            <style>
                                .mapouter {
                                    position: relative;
                                    text-align: right;
                                    height: auto;
                                    width: auto;
                                }

                                .gmap_canvas {
                                    overflow: hidden;
                                    background: none !important;
                                    height: auto;
                                    width: auto;
                                }
                            </style>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- CONTENT END -->
@endsection