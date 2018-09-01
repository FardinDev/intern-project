<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\upload;
class AdminController extends Controller
{
   public function __construct()
   {

  $this -> middleware("test");

   }
    public function index()
    {
      // return view('admin.index');
        $users = DB::table('users')->orderBy('role', 'asc')->get();
        return view('admin.index')->with('users', $users);
    }

    public function posts()
    {
      $requests = DB::table('uploads')->where('status', 0)->paginate(2);

      return view('admin.posts')->with('requests', $requests);

    }


    public function PostApove($id)
    {
      DB::table('uploads')
            ->where('id', $id)
            ->update(['status' => 1]);

      return redirect("/admin/posts");

    }

    public function SetAdmin($id)
    {
      DB::table('users')
            ->where('id', $id)
            ->update(['role' => 'admin']);

      return redirect("/admin");

    }

    public function RemoveAdmin($id)
    {

       if($id==1)
       {
         return redirect("/admin");
       }
       else
       {
               DB::table('users')
                     ->where('id', $id)
                     ->update(['role' => 'user']);

               return redirect("/admin");
       }

    }





}
