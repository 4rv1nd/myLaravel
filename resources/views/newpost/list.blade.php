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

<a href="{{route('newposts.create')}}" class="btn btn-info">Create Post</a>
<table class="table">
  <thead>
    <tr>
        <th>#</th>
        <th>ID</th>
        <th scope="col">Title</th>
        <th scope="col">Description</th>
        <th scope="col">Active</th>
        <th scope="col">Publish</th>
        <th scope="col">Operation</th>
    </tr>
  </thead>
  <tbody>
    @if($post)
        @foreach($post as $key => $item)
            <tr>
                <td scope="row">{{$key+1}}</td>
                <td>{{$item['id']}}</td>
                <td>{{$item['title']}}</td>
                <td>{{ Str::limit($item['description'],28)}}</td>
                <td>
                  <a href="{{route('newposts.active',$item['id'])}}" class="btn btn-{{$item['is_active']?'success':'danger'}}">{{$item['is_active']?'Yes':'No'}}</a>
                </td>
                <td>
                  <a href="{{route('newposts.publish',$item['id'])}}" class="btn btn-{{$item['is_publish']?'success':'danger'}}">{{$item['is_publish']?'Yes':'No'}}</a>
                </td>
                <td>
                  <div class="row">
                    <div class="col-6 d-flex gap-1">
                      <a href="{{route('newposts.show',$item['id'])}}" class="btn btn-info btn-sm">Show</a>
                      <a href="{{route('newposts.edit',$item['id'])}}" class="btn btn-warning btn-sm">edit</a>
                      <form action="{{route('newposts.destroy',$item['id'])}}" method="post">
                        @csrf
                        @method('delete')
                        <button class="btn btn-danger btn-sm" type="submit">Delete</button>
                      </form>
                      @if($item->trashed())
                        <a href="{{route('newposts.softdelete',$item['id'])}}" class="btn btn-warning btn-sm">recover</a>
                      @endif
                    </div>
                    <div class="col-6 d-flex gap-1">
                      <a href="{{route('newposts.slug',$item['slug'])}}" class="btn btn-info btn-sm">slug show</a>
                      <a href="{{route('newposts.slugedit',$item['slug'])}}" class="btn btn-warning btn-sm">slug edit</a>
                      <a href="{{route('newposts.slugdelete',$item['slug'])}}" class="btn btn-danger btn-sm">slug delete</a>
                      @if($item->trashed())
                        <a href="{{route('newposts.slugrecover',$item['slug'])}}" class="btn btn-warning btn-sm">recover</a>
                      @endif
                    </div>
                  </div>
                </td>
            </tr>
        @endforeach
    @else
        <tr>
            <td class="text-center" scope="row" colspan="5">No data Found</td>
        </tr>
    @endif
  </tbody>
</table>
{{$post->render()}}
@endsection