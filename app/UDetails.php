<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UDetails extends Model
{
    use SoftDeletes;
    protected $table = 'userdetails';
    protected $dates = ['deleted_at'];
    public $timestamps = false;
}
