<?php

namespace App\Http\Middleware;

use Closure;
use App\User;
class author
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
         
        if(\Auth::guest())
{
    return redirect('/');
}
else
{
    $role = \Auth::user()->role;


    if ($role == 'author' || $role == 'admin' ){
        return $next($request);
    }
    
    return redirect('/');

    }
}
}