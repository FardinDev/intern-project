@extends('layouts.app')

@section('content')
@if(count($requests) > 0)
        @foreach($requests as $post)

            <div class="jumbotron text-center">
                    <div class="row">
                            <div class="col-md-4 col-sm-4">
                                <img style="width:70%" src="/storage/images/{{$post->image}}">
                            </div>
                            <div class="col-md-8 col-sm-8">
                                <h3>{{$post->title}}</h3>
                                <h3><a href="{{$post->URL}}">{{$post->URL}}</a></h3>
                                <h5>{{$post->short_description}}</h5>
                                @if($post->status==0)
                                <small><font color="red">Not Aproved</font></small>
                                @else
                                <small><font color="green">Aproved</font></small>
                                @endif
                                <br>
                                <small>Posted on {{$post->created_at}}</small>
                                <br>
                                <a href="/admin/posts/{{$post->id}}"><button type="button" class="btn btn-success">Aprove</button></a>
                            </div>
                    </div>

            </div>
            <br>

        @endforeach
        {{$requests->links()}}
    @else
        <p>No posts found</p>
    @endif





@endsection
