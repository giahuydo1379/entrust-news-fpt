<?php

namespace App\Http\Controllers\frontend;
use Illuminate\Http\Request;
use App\Http\Model\Post;
use Illuminate\Support\Collection;
use DB;
class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * 
  
     * Store a newly created resource in storage.

     */
  
   public function getViewIntroduce(){
       return view('frontend.introduce.content');
   }
        
   public function getViewPricelist(){
        return view('frontend.pricelist.content');
    } 
    public function getViewContact(){

         return view('frontend.contact.content');
    } 
    public function getViewHome(){


        $post = Post::orderBy('id','DESC')->where('active', 1)->paginate(5);
 
         return view('frontend.home.content', compact('post'));
    } 
  
    public function getViewNews(Request $request)
    {
 
        $post = Post::orderBy('id','DESC')->where('active', 1)->paginate(5);
       // $otherPost = Post::orderBy('id','DESC')->where('active', 1)->paginate(10);
      //  $relateNews = Post::where('idLoaiTin',$tintuc->idLoaiTin)->take(4)->get();
        return view('frontend.news.content',compact('post'));   
    }

    public function getViewDetails($name, $id){

     $post = Post::find($id);
     $hotNews = Post::where('oustand',1)->take(4)->get();

      if(!is_null($post)){
        return view('frontend.detail.content',['post' => $post, 'hotNews' =>  $hotNews  ]);
      }
     
    } 
    public function getBreadcumbDetailNew($id){
     
         $post = Post::find($id);
    
          if(!is_null($post)){
            return view('frontend.detail.banner',['post' => $post]);
          }
         
        } 
    
}