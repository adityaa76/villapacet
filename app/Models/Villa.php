<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Villa extends Model
{
    protected $table = 'villa';

    protected $guarded = ['id'];

    public function latestImage()
    {
        return $this->hasOne('App\Models\ImagesVilla', 'villa_id', 'id')->latest();
    }

    public function imageRelation()
    {
        return $this->hasMany('App\Models\ImagesVilla', 'villa_id', 'id');
    }


}