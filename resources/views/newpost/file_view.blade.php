@extends('layouts.default')

@section('content')
    <div class="form-group">
        <h1>Your all image</h1>
        @foreach($images as $image)
          <br/>
          <img height="300px" width="800px" src="{{ asset($image->image); }}"/>
        @endforeach
    </div>
@endsection