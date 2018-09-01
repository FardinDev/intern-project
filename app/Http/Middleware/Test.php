<?php

namespace App\Http\Middleware;

use Closure;
use App\User;
class Test
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


    if ($role != 'admin'){
        return redirect('/');
    }
    return $next($request);




}
    }
}
