@extends('layout')

@section('content')
	<div class="col-sm-8">
		<h2> 
			Editar pelicula 
			<a href="{{ route('movies.index') }}" class="btn btn-default pull-right">Listado</a>
		</h2>

		@include('movies.aside.error')

		{!! Form::model($movie, ['route' => ['movies.update', $movie->id], 'method' => 'PUT']) !!}
			@include('movies.aside.form')
			
		{!! Form::close() !!}

	</div>

	<div class="col-sm-4">
		<p class="alert alert-info">
			En esta seccion podemos Editar las peliculas.
		</p>
	</div>
@endsection