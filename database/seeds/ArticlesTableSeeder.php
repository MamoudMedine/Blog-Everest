<?php

use Illuminate\Database\Seeder;
use App\Model\Article;

class ArticlesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         factory('App\Model\Article', 36)->create();

    }
}
