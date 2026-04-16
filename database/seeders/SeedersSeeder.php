<?php

namespace Database\Seeders;

use App\Models\Seeder;
use Illuminate\Database\Seeder as BaseSeeder;

class SeedersSeeder extends BaseSeeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $seeders = config('enums.seeders');

        foreach ($seeders as $seeder) {
            Seeder::updateOrCreate(
                ['name' => $seeder],
                ['is_completed' => 1]
            );
        }
    }
}
