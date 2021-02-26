<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\User;


class UserController extends Controller
{

    public function indexApi()
    {
        return User::all()->sortBy('solve_time')->values()->all();
    }

    public function update($id)
    {
        $user = User::find($id);
        $user->status = "FINISHED";
        $user->save();

        return redirect('/');
    }

    public function showq()
    {
        return User::where('status','ON QUEUE')->orderBy('solve_time')->limit(3)->get();
    }

}
