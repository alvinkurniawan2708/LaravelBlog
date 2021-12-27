<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    //php artisan db:seed untuk menjalankan seeder
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(3)->create();

        User::create([
            'name' => 'Alvin Kurniawan',
            'username' => 'alvinkurniawan',
            'email'=>'alvin@gmail.com',
            'password'=>bcrypt('12345')
        ]);
        // User::create([
        //     'name' => 'Doddy Abg',
        //     'email'=>'doddy@gmail.com',
        //     'password'=>bcrypt('12345')
        // ]);
        Category::create([
            'name'=>'Web Programming',
            'slug'=>'web-programming'
        ]);
        Category::create([
            'name'=>'Web Design',
            'slug'=>'web-design'
        ]);
        Category::create([
            'name'=>'Personal',
            'slug'=>'personal'
        ]);

        Post::factory(20)->create();
    //     Post::create([
    //         'title'=>'Judul Pertama',
    //         'slug'=>'judul-pertama',
    //         'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
    //         'body'=>'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quaerat inventore optio sed modi animi necessitatibus, sit molestias quidem porro laudantium architecto soluta non minima fuga explicabo at, eaque libero qui! Magni minus, natus, laudantium voluptate soluta tempora aliquid porro sed cupiditate neque modi adipisci quo, ducimus molestiae similique quasi libero vel iure cumque itaque. Excepturi deleniti, eos repudiandae dolorum voluptatibus obcaecati. Eos voluptatem ut similique recusandae, dignissimos quidem, molestiae distinctio quam alias eum beatae minus qui tenetur corporis accusamus repellat iste possimus. Quisquam expedita quis amet labore sit a facere dolore sequi eveniet illo reiciendis assumenda, veniam commodi harum inventore?',
    //         'category_id'=> 1,
    //         'user_id' => 1
    //     ]);
    //     Post::create([
    //         'title'=>'Judul Kedua',
    //         'slug'=>'judul-kedua',
    //         'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
    //         'body'=>'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quaerat inventore optio sed modi animi necessitatibus, sit molestias quidem porro laudantium architecto soluta non minima fuga explicabo at, eaque libero qui! Magni minus, natus, laudantium voluptate soluta tempora aliquid porro sed cupiditate neque modi adipisci quo, ducimus molestiae similique quasi libero vel iure cumque itaque. Excepturi deleniti, eos repudiandae dolorum voluptatibus obcaecati. Eos voluptatem ut similique recusandae, dignissimos quidem, molestiae distinctio quam alias eum beatae minus qui tenetur corporis accusamus repellat iste possimus. Quisquam expedita quis amet labore sit a facere dolore sequi eveniet illo reiciendis assumenda, veniam commodi harum inventore?',
    //         'category_id'=> 1,
    //         'user_id' => 2
    //     ]);
    //     Post::create([
    //         'title'=>'Judul Ketiga',
    //         'slug'=>'judul-ketiga',
    //         'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit.',
    //         'body'=>'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quaerat inventore optio sed modi animi necessitatibus, sit molestias quidem porro laudantium architecto soluta non minima fuga explicabo at, eaque libero qui! Magni minus, natus, laudantium voluptate soluta tempora aliquid porro sed cupiditate neque modi adipisci quo, ducimus molestiae similique quasi libero vel iure cumque itaque. Excepturi deleniti, eos repudiandae dolorum voluptatibus obcaecati. Eos voluptatem ut similique recusandae, dignissimos quidem, molestiae distinctio quam alias eum beatae minus qui tenetur corporis accusamus repellat iste possimus. Quisquam expedita quis amet labore sit a facere dolore sequi eveniet illo reiciendis assumenda, veniam commodi harum inventore?',
    //         'category_id'=> 2,
    //         'user_id' => 1
    //     ]);
     }
}
