@extends('layouts.app')

@section('content')
@if(count($upload) > 0)
        @foreach($upload as $post)
          @if($post->status==1)
            <div class = "jumbotron text-center">
            <div class = "row">
            <div class = "col-md-4 col-sm-4">
            <img style = "width:70%" src = "/storage/images/{{$post->image}}">
                            </div>
                            <div   class = "col-md-8 col-sm-8">
                            <h3><a href  = "{{$post->URL}}">{{$post->title}}</a></h3>
                                <h5>{{$post->short_description}}</h5>
                                @if($post->status==0)
                                <small><font color = "red">Not Aproved</font></small>
                                @else
                                <small><font color = "green">Aproved</font></small>
                                @endif
                                <br>
                                <small>Posted on {{$post->created_at}}</small>
                            </div>
            </div>
            </div>
            <br>
            @endif
        @endforeach
        {{$upload->links()}}
       @else
        <p>No posts found</p>
       @endif
@endsection
