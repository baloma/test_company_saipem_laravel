<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class JoinCompanyController extends Controller
{
    public function index()
    {
        $v_joincompanies = DB::select('SELECT * FROM v_joincompany');
        return view('joincompany.index', compact('v_joincompanies'));
    }
}
