<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Biodata;
use App\Models\Dataortu;
use App\Models\Datapendukung;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Dompdf\Dompdf;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function index(){
    $pendaftar = User::where('role', 2)->count();
    $admin = User::where('role', 1)->count();
    $user_id = Auth::user()->id;
    $biodata = biodata::where('users', Auth::user()->id)->count();
    $dataortu = dataortu::where('users', Auth::user()->id)->count();
    $datapendukung = datapendukung::where('users', Auth::user()->id)->count();

    return view('dashboard.index', compact('admin', 'pendaftar','biodata','dataortu', 'datapendukung'));
    }
}