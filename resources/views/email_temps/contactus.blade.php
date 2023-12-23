@extends('layouts.mail')
@section('content')
<div class="innerContent-wrap">
  <div class="container">
    <table class="table table-bordered">
      <tbody>
        <tr>
          <th scope="row" align="left">Name</th>
          <td>{{$data->first_name}} {{$data->last_name}}</td>
        </tr>
        <tr>
          <th scope="row" align="left">Email Address</th>
          <td>{{$data->email_address}}</td>
        </tr>
        <?php if($data->company!=null): ?>
        <tr>
          <th scope="row" align="left">Company Name</th>
          <td>{{$data->company}}</td>
        </tr>
        <?php endif; ?>
        <tr>
          <th scope="row" align="left">Phone Number</th>
          <td>{{$data->phone_number}}</td>
        </tr>
        <?php if($data->address!=null): ?>
        <tr>
          <th scope="row" align="left">Address</th>
          <td>{{$data->address}}</td>
        </tr>
        <?php endif; ?>
        <tr>
          <th scope="row" align="left">Subject</th>
          <td>{{$data->subject}}</td>
        </tr>
        <tr>
          <th scope="row" align="left">Message</th>
          <td>{!!$data->message!!}</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
@endsection