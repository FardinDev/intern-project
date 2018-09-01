<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\upload;
use DB;

class UserController extends Controller
{
    public function __construct()
    {

  $this -> middleware("user");

    }
     public function index()
     {

         return view('user.upload');
     }


     public function store(Request $request)
     {

        $this->validate($request, [
            'title' => 'required',
            'URL' => 'required',
            'image' => 'required|image|nullable|max:1999'
        ]);
        // Handle File Upload

            // Get filename with the extension
            $filenameWithExt = $request->file('image')->getClientOriginalName();
            // Get just filename
            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
            // Get just ext
            $extension = $request->file('image')->getClientOriginalExtension();
            // Filename to store
            $fileNameToStore= $filename.'_'.time().'.'.$extension;
            // Upload Image
            $path = $request->file('image')->storeAs('public/images', $fileNameToStore);

        // Create Post
        $upload = new upload;
        $upload->title = $request->input('title');
        $upload->URL = $request->input('URL');
        $upload->short_description = $request->input('short_description');
        $upload->user_id = auth()->user()->id;
        $upload->image = $fileNameToStore;
        $upload->status = 0;
        $upload->save();



        return redirect('/');
     }


     public function uploads()
     {
       $id = auth()->user()->id;
       $myposts= upload::orderBy('created_at', 'desc')->where('user_id', $id)->paginate(10);

       return view('user.uploads')->with('myposts', $myposts);;


     }
}
