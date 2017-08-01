@extends('layout')

@section('content')
	<div class="col-sm-8">
		<h2> 
			Nuevo Producto 
			<a href="{{ route('movies.index') }}" class="btn btn-default pull-right">Listado</a>
		</h2>

		@include('movies.aside.error')

		{!! Form::open(['route' => 'movies.store']) !!}
			
			@include('movies.aside.form')
			
		{!! Form::close() !!}

	</div>

	<div class="col-sm-4">
		<p class="alert alert-info">
			En esta seccion podemos añadir una nueva pelicula.
		</p>
	</div>
@endsection