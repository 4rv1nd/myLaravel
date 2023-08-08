@extends('layouts.default')

@section('content')
<!-- is-invalid -->
<!-- is-valid -->
<!-- <div class="invalid-feedback"></div> -->

<script>
  document.addEventListener('DOMContentLoaded',function(){
    document.querySelector('.newPostNav').classList.add('active');
  });
</script>

@if(Session::has('msg'))
    <div class="alert alert-info" role="alert">
    {{Session::get('msg')}}
    </div>    
@endif
<form action="{{route('newposts.filesave')}}" style="width:40%; margin:auto;" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="title">file</label>
        <input type="file" name="myfile" class="form-control @error('myfile') is-invalid @enderror"/>
        @error('myfile')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
    @csrf
    <button type="submit" class="mt-2 btn btn-primary">Submit</button>
</form>
@endsection