<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\User;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }
    public function Search(Request $request){
    	$keyword = $request->keyword;
    	$user = User::where('name','like',"%$request->keyword%")->paginate(5)->appends(['keyword' => $keyword]);

        return view('search',['user' => $user, 'keyword' => $request->keyword]) 
        ->with('i', ($request->input('page', 1) - 1) * 5);
        
    }
}
