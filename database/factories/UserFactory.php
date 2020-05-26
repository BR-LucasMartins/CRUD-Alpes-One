<?php

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\User::class, function (Faker $faker) {
    return [
        'nome' => $faker->name,
        'idade' => $faker->numberBetween($min = 18, $max = 50),
        'email' => $faker->unique()->safeEmail,
        'cpf' => $faker->unique()->e164PhoneNumber,
        'celular' => $faker->phoneNumber,
        'funcao' => $faker->jobTitle,
        'remember_token' => str_random(10),
    ];
});
