<?php

use Illuminate\Database\Seeder;
use App\Model\User;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Hash;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'nom' => 'administrateur',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('123456')
        ]);
    }
}
