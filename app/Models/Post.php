<?php

namespace App\Models;

use App\Models\Category;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Cviebrock\EloquentSluggable\Sluggable;

class Post extends Model
{
    use HasFactory;
     use Sluggable;

    protected $guarded = ['id'];
    protected $with = ['category','author'];

    public function scopeFilter($query, array $filters){
        $query->when($filters['search'] ?? false, function($query,$search){
            return $query->where(function($query) use ($search){
                $query->where('title','like','%' . $search . '%')
                ->orWhere('body','like','%' . $search . '%');
            });
        });

        //versi callback
        $query->when($filters['category'] ?? false,function($query,$category){
            return $query->whereHas('category',function($query) use ($category){
                $query->where('slug',$category);
            });
        });
        //versi arrow function
        $query->when($filters['author'] ?? false,fn($query,$author)=>
         $query->whereHas('author',fn($query)=>
             $query->where('username',$author)
            )
        );
    }

    public function category(){ //nama method sama dengan modelnya
        return $this->belongsTo(Category::class); //1 posting punya 1 kategory
    }
    public function author(){
        return $this->belongsTo(User::class,'user_id');//1 posting punya 1 user
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }
    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }
}

