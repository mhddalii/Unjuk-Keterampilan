<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'category';
    protected $guarded = ['id'];
    use HasFactory;

    public function post()
    {
        return $this->hasMany(Post::class);
    }
}
