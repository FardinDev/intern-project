@extends('layouts.app')

@section('content')
<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">Users</th>
    </tr>
    <tr>
      <th scope="col">User ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Role</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    @foreach($users as $user)
    <tr>
      <th scope="row">{{$user->id}}</th>
      <td>{{$user->name}}</td>
      <td>{{$user->email}}</td>
      <td>{{$user->role}}</td>
      @if($user->role == 'admin')
        @if($user->id == 1)
        <td><a href="/admin/removeadmin/{{$user->id}}"><button type="button" class="btn btn-danger" disabled>Remove As Admin</button></a></td>
        @else
      <td><a href="/admin/removeadmin/{{$user->id}}"><button type="button" class="btn btn-danger">Remove As Admin</button></a></td>
        @endif
      @else
      <td><a href="/admin/setadmin/{{$user->id}}"><button type="button" class="btn btn-secondary">Set As Admin</button></a></td>
      @endif
    </tr>
    @endforeach
  </tbody>
</table>
@endsection
