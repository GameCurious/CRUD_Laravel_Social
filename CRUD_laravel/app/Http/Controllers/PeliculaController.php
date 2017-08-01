<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pelicula;
use App\Http\Requests\MovieRequest;

class PeliculaController extends Controller
{
    public function index()
    {
    	$movies = Pelicula::orderBy('id', 'DESC')->paginate(5);
    	return view('movies.index', compact('movies'));
    }

    public function show($id)
    {
    	$movie = Pelicula::find($id);
    	return view('movies.show', compact('movie'));
    }

    public function destroy(Request $request, $id)
    {
        if($request->ajax()) {
            $movie = Pelicula::find($id);
            $movie->delete(); 
        }
    	
    	//return back()->with('info', 'La pelicula fue eliminada');

        return response()->json(['message' => $movie->name . ' fue eliminado']);
    }

    public function edit($id)
    {
    	$movie = Pelicula::find($id);
    	return view('movies.edit', compact('movie'));
    }

    public function create()
    {
    	return view('movies.create');
    }

    public function store(MovieRequest $request)
    {
    	$movie = new Pelicula;

        $movie->name = $request->name;
        $movie->director = $request->director;
        $movie->synopsis = $request->synopsis;
        
        $movie->save();

        return redirect()->route('movies.index')->with('info', 'La pelicula fue guardada');
    }

    public function update(MovieRequest $request, $id)
    {
        $movie = Pelicula::find($id);

        $movie->name = $request->name;
        $movie->director = $request->director;
        $movie->synopsis = $request->synopsis;
    	
        $movie->save();

        return redirect()->route('movies.index')->with('info', 'La pelicula fue actualizada');
    }

    public function about()
    {
        return view('about');
    }
}
