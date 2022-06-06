<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class hoadon extends Model
{
    public $timestamps = false;
    protected $fillable = ['id_HD', 'id_TT','id_DH', 'id_KH', 'TongHoaDon','TrangThaiHoaDon'];

    protected $primaryKey = 'id_HD';

    protected $table = 'hoadon';
}
