@extends('layouts.default')

@section('title')
User
@endsection

@section('style')
<style>
    .my-main-content{
        background-color: red;
    }    
</style>
@endsection

@section('content')
<div class="my-main-content">
    @if(0)
        <hi>helllooo false if condition</h1>
    @endif
    @if(1)
        <hi>helllooo true if condition</h1>
    @endif
    <?php $rows = array('helloo', 'hi') ?>
    <?php $encodedRows = json_encode($rows); ?>

    <ul>
        @foreach($rows as $key => $row)
            <li>{{$key." ".$row}}</li>
        @endforeach
        @json('{{$encodedRows}}')
    </ul>
</div>
@endsection