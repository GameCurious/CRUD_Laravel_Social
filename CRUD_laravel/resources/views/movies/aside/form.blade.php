<div class="form-group">
	{!! Form::label('name', 'Nombre de la pelicula') !!}
	{!! Form::text('name', null, ['class' => 'form-control']) !!}
</div>

<div class="form-group">
	{!! Form::label('director', 'Director de la pelicula') !!}
	{!! Form::text('director', null, ['class' => 'form-control']) !!}
</div>

<div class="form-group">
	{!! Form::label('synopsis', 'Sinopsis de la pelicula') !!}
	{!! Form::text('synopsis', null, ['class' => 'form-control']) !!}
</div>

<div class="form-group">
	{!! Form::submit('Enviar', ['class' => 'btn btn-primary']) !!}
</div>