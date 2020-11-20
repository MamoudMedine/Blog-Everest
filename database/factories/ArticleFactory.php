<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model\Article;
use Faker\Generator as Faker;

$factory->define(Article::class, function (Faker $faker) {
    return [
        'titre' => $faker->title,
        'image' => 'http://lorempixel.com/400/200/business',
        'description' => $faker->realText(600),
    ];
});
