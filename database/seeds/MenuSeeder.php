<?php

use Illuminate\Database\Seeder;
use App\Models\Menu;

class MenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Menu::create([
            'name' => 'Главная',
            'url' => '/',
            'title' => 'Главная страница сайта',
        ]);

        Menu::create([
            'name' => 'Записи',
            'url' => '/',
            'title' => 'Записи title',
        ]);

        Menu::create([
            'name' => 'Сервисы',
            'url' => '/',
            'title' => 'Сервисы title',
        ]);

        Menu::create([
            'name' => 'Комментарии',
            'url' => '/',
            'title' => 'Комментарии title',
        ]);

        Menu::create([
            'name' => 'Архив',
            'url' => '/',
            'title' => 'Архив title',
        ]);

        Menu::create([
            'name' => 'О блоге',
            'url' => '/',
            'title' => 'О блоге title',
        ]);

        Menu::create([
            'name' => 'Контакты',
            'url' => '/',
            'title' => 'Контакты title',
        ]);

        Menu::create([
            'name' => 'Резюме',
            'url' => '/',
            'title' => 'Резюме title',
        ]);
    }
}
