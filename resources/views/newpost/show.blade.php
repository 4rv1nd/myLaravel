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


<div class="row">
  @if($post)
    <div class="col-3 form-group">
      <label for="title">Title</label>
      <input type="text" class="form-control" id="title" disabled value="{{$post['title']}}">
    </div>
    <div class="col-3 form-group">
      <label for="active">Active</label>
      <input type="text" class="form-control" id="active" disabled value="{{$post['is_active']==1?'Yes':'No'}}">
    </div>
    <div class="col-3 form-group">
      <label for="publish">Publish</label>
      <input type="text" id="publish" class="form-control" disabled value="{{$post['is_publish']==1?'Yes':'No'}}">
    </div>
    <div class="col-3 form-group">
      <label for="numbers">Numbers</label>
      <input type="text" id="numbers" class="form-control" disabled value="{{$post['numbers']}}">
    </div>
    <div class="col-12 form-group">
      <label for="description">Description</label>
      <input type="text" id="description" class="form-control" disabled value="{{$post['description']}}">
    </div>
    <div class="col-12 form-group">
      <label for="slug">Slug</label>
      <input type="text" id="slug" class="form-control" disabled value="{{$post['slug']}}">
    </div>
  @else
    <div class="col-12 form-control">No data Found</div>
  @endif
</div>
@endsection