<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seeder extends Model
{
    use HasFactory;

    protected $table = 'seeders';

    protected $fillable = [
        'name',
        'is_completed',
    ];

    public $timestamps = false;
}
