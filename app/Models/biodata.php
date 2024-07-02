<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Biodata extends Model
{
    protected $table = 'students';
    public $timestamps = false;
    protected $fillable = [
        'nama_lengkap', 'tmp_lahir', 'tgl_lahir', 'jns_kelamin', 'anak_ke', 'jml_sdr_kandung'
    ];
}
