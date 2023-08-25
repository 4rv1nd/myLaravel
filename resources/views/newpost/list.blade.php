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
                  <a href="{{route('newposts.active',$item['id'])}}" class="btn btn-{{$item['is_active']?'success':'danger'}}">Click to {{$item['is_active']?'inactive':'active'}}</a>
                </td>
                <td>
                  <a href="{{route('newposts.publish',$item['id'])}}" class="btn btn-{{$item['is_publish']?'success':'danger'}}">Click to {{$item['is_publish']?'inactive':'active'}}</a>
                </td>
                <td class="d-flex gap-2">
                  <a href="{{route('newposts.show',$item['id'])}}" class="btn btn-info">Show</a>
                  <a href="{{route('newposts.edit',$item['id'])}}" class="btn btn-warning">edit</a>
                  <a href="{{route('newposts.slug',$item['slug'])}}" class="btn btn-warning">slug show</a>
                  <form action="{{route('newposts.destroy',$item['id'])}}" method="post">
                    @csrf
                    @method('delete')
                    <button class="btn btn-danger" type="submit">Delete</button>
                    <!-- $item['deleted_at']!=null -->
                    <!-- $item->trashed() -->
                    @if($item->trashed())
                      <a href="{{route('newposts.softdelete',$item['id'])}}" class="btn btn-warning">recover</a>
                    @endif
                  </form>
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