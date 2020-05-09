<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ImagesVilla extends Model
{
    protected $table = 'images_villa';

    protected $guarded = ['id'];

    public function villaRelation()
    {
        return $this->hasOne('App\Models\Villa', 'id', 'villa_id');
    }
}
