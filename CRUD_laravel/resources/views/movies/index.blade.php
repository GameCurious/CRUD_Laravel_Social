@extends('layout')

@section('content')
<div class="col-sm-8">
	<h2>
		Listado de peliculas
		<a href="{{ route('movies.create') }}" class="btn btn-primary pull-right">Nuevo</a>
	</h2>
	@include('movies.aside.info')
	<table class="table table-hover table-striped">
		<thead>
			<tr>
				<th width="20px">ID</th>
				<th>Nombre de la pelicula</th>
				<th colspan="3">&nbsp;</th>
			</tr>
		</thead>

		<tbody>
			@foreach($movies as $movie)
			<tr>
				<td>{{ $movie->id }}</td>
				<td>
					<strong>{{ $movie->name }}</strong> :
					{{ $movie->synopsis }}
				</td>
				<td>
					<a href="{{ route('movies.show', $movie->id) }}" class="btn btn-link">Ver</a>
				</td>
				<td>
					<a href="{{ route('movies.edit', $movie->id) }}" class="btn btn-link">Editar</a>
				</td>
				<td>
					<form action="{{ route('movies.destroy', $movie->id) }}" method="POST">
						{{ csrf_field() }}
						<input type="hidden" name="_method" value="DELETE">
						<button class="btn btn-link borrar">Borrar</button>
					</form>
				</td>
			</tr>
			@endforeach
		</tbody>
	</table>

	{!! $movies->render() !!}
</div>
<div class="col-sm-4">
	<p class="alert alert-info">
		En esta seccion podemos "Crear", "Mostrar", "Editar" y "Borrar" peliculas.
	</p>
</div>

@endsection

@section('script')
	<script src="{{ asset('js/script.js') }}"></script>
@endsection