<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\Models\User::class, function (Faker\Generator $faker) {
    static $password;

    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => $password ?: $password = bcrypt('secret'),
        'remember_token' => str_random(10),
        'active' => $faker->boolean(50),
    ];
});

$factory->define(App\Models\Post::class, function (Faker\Generator $faker) {

    return [
        'title' => $faker->text(150),
        'alias' => $faker->slug,
        'body' => $faker->text(600),
        'body_preview' => $faker->text(250),
        'author_id' => rand(1,20),
        'published' => $faker->boolean(50),
    ];
});
