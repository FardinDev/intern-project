@extends('layouts.app')

@section('content')
<h1>Create Post</h1>
    {!! Form::open(['route' => 'usercontroller.store', 'method' => 'POST', 'enctype' => 'multipart/form-data']) !!}
        <div class="form-group">
            {{Form::label('title', 'Title')}}
            {{Form::text('title', '', ['class' => 'form-control', 'placeholder' => 'Title'])}}
        </div>
        <div class="form-group">
        {{Form::label('URL', 'URL')}}
            {{Form::text('URL', '', ['id' => 'URL', 'class' => 'form-control', 'placeholder' => 'Paste URL Here'])}}
        </div>
        <div class="form-group">
        {{Form::label('short_description', 'Short Description')}}
            {{Form::textarea('short_description', '', ['id' => 'short_description', 'class' => 'form-control', 'placeholder' => 'Description'])}}
        </div>
        <div class="form-group">
            {{Form::file('image')}}
        </div>
        {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection