<?php

namespace App\Http\Controllers;

// use App\Http\Controller\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    // function register(request $req)
    // {
    //     $user = new USer;
    //     $user -> name = $req->input('name');
    //     $user -> email = $req->input('email');
    //     $user -> password = Hash::make($req->input('password'));
    //     $user ->save();
    //     return $user;
    // }

    function register(Request $req)
    {
        
            $user = User::create([
                'name' => $req['name'],
                'email' => $req['email'],
                'password' => Hash::make($req['password'])
            ]);
        $user ->save();
        return $user;    
    }

    function login(Request $req)
    {   
        $user = User::where('email', $req->email)->first();
        if( !$user || !Hash::check($req->password, $user->password)){
            return ["Error"=>"Sorry Email & Password doesn't match"];
        }
        return $user;
    }
}