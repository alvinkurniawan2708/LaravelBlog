<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Post;
class PostController extends Controller
{
    public function index(){
        $title = '';
        if(request('category')){
            $category = Category::firstWhere('slug',request('category'));
            $title = ' in ' . $category->name;
        }

        if(request('author')){
            $author = User::firstWhere('username',request('author'));
            $title = ' by ' . $author->name;
        }
        return view('blog',[
            "title" => "All Posts" . $title,
            "active" => 'posts',
            // "posts" => Post::all()
            "posts" => Post::latest()->filter(request(['search','category','author']))->paginate(7)->withQueryString() //pagination
        ]);
    }
    public function show(Post $post){
        
        return view('post',[
            "title" => $post->title,
            "active" => 'posts',
            "post" =>$post
        ]);
    }
}
