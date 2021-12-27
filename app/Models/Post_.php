<?php

namespace App\Models;

class Post
{
    private static $blog_post = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Alvin Kurniawan",
            "body" => "
            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quisquam harum dignissimos reiciendis vero excepturi nemo facere necessitatibus dolore? Inventore id debitis ipsa asperiores rerum molestias nostrum consequuntur veniam dicta laudantium."
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Alvin Kurniawan",
            "body" => "       
            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit, necessitatibus nobis reprehenderit dolor temporibus quod officia ducimus corrupti neque ratione, adipisci incidunt cupiditate. Ipsa error, quisquam itaque doloribus repudiandae impedit inventore possimus voluptatibus nisi reprehenderit! Inventore, odio sit. Aspernatur unde recusandae debitis iusto quaerat! Consequuntur, a fuga nulla quos quae maxime doloribus in eos optio delectus dolor illo libero dicta debitis quia asperiores ea minima itaque quasi dolorem nisi explicabo est dignissimos eligendi. Ipsam exercitationem, similique eius veritatis nihil ullam!"
        ],
    ];

    public static function all(){
        return collect(self::$blog_post);
    }
    
    public static function find($slug){
        $posts = static::all();
        return $posts->firstWhere('slug',$slug);
    }
}



