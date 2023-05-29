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
<form action="{{route('newposts.update',$post['id'])}}" style="width:40%; margin:auto;" method="post">
    @method('put')
    <div class="form-group">
        <label for="title">Title</label>
        <input type="text" class="form-control @error('title') is-invalid @enderror" id="title" aria-describedby="emailHelp" placeholder="Enter Title" name="title" value="{{old('title',$post['title'])}}">
        @error('title')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
    <div class="form-group">
        <label for="desc">Desription</label>
        <textarea name="description" id="desc" class="form-control @error('description') is-invalid @enderror">{{old('description',$post['description'])}}</textarea>
        @error('description')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
        <!-- <input type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Title" name="desription"> -->
    </div>
    <div class="form-group">
        <label for="title">Numbers</label>
        <input type="number" class="form-control @error('numbers') is-invalid @enderror" id="title" aria-describedby="emailHelp" placeholder="Enter Numbers" name="numbers" value="{{old('numbers',$post['numbers'])}}">
        @error('numbers')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
    <div class="form-group">
        <label for="title">Is Published</label>
        <select name="is_publish" class="form-control @error('is_publish') is-invalid @enderror" value="{{old('is_publish')}}">
            <option value="">Please Select</option>
            <option value="1" @selected(old('is_publish',$post['is_publish'])==1)>Yes</option>
            <option value="0" @selected(old('is_publish',$post['is_publish'])==0)>no</option> 
        </select>
        @error('is_publish')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
    <div class="form-group">
        <label for="title">Is Disable</label>
        <select name="is_active" class="form-control @error('is_active') is-invalid @enderror">
            <option value="">Please Select</option>
            <option value="1" @selected(old('is_active',$post['is_active'])==1)>Yes</option>
            <option value="0" @selected(old('is_active',$post['is_active'])==0)>no</option>
        </select>
        @error('is_active')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
    @csrf
    <button type="submit" class="mt-2 btn btn-primary">Submit</button>
</form>
@endsection