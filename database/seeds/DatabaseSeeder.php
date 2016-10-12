<?php

use Illuminate\Database\Seeder;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UserSeeder::class);
    }
}

class PostsSeeder extends Seeder
{
    public function run()
    {
        DB::table('posts')->delete();
        Post::create([
            'title' => 'First post title',
            'title_translit' => 'First-post-title',
            'body' => 'First body text example',
            'body_preview' => 'First body preview text example',
            'published' => true
        ]);

        Post::create([
            'title' => 'Second post title',
            'title_translit' => 'second-post-title',
            'body' => 'Second body text example',
            'body_preview' => 'Second body preview text example',
            'published' => true
        ]);

        Post::create([
            'title' => 'Third post title',
            'title_translit' => 'third-post-title',
            'body' => 'Third body text example',
            'body_preview' => 'Third body preview text example',
            'published' => true
        ]);

        Post::create([
            'title' => 'Four post title',
            'title_translit' => 'Four-post-title',
            'body' => 'Four body text example',
            'body_preview' => 'Four body preview text example',
            'published' => true
        ]);

    }
}
