@extends('layouts.default')

@section('content')
    <div class="form-group">
        <h1>Your all image</h1>
        @foreach($images as $image)
        <div class="row">
          <div class="col-8">
            <img height="100px" width="200px" src="{{ asset($image->image); }}"/>
          </div>
          <div class="col-4">
            <a href="{{route('newposts.filedelete',$image->id)}}" class="btn btn-danger">Delete</a>
          </div>
        </div>
        @endforeach
    </div>
@endsection