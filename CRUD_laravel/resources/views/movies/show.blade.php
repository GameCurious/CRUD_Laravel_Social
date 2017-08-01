@extends('layout')

@section('content')
	<div class="col-sm-8">
		<h2> {{ $movie->name }} 
			<a href="{{ route('movies.edit', $movie->id) }}" class="btn btn-default pull-right">Editar</a>
		</h2>
		<p><u>Director: {{ $movie->director }}</u></p>
		{!! $movie->synopsis !!}
	</div>

	<div class="col-sm-4">
		<p class="alert alert-info">
			En esta seccion podemos ver a detalle la informacion de la pelicula.
		</p>
	</div>
@endsection