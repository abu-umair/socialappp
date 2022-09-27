<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\JobRequest;
use Illuminate\Http\Request;
use App\Job;
use App\Http\Resources\JobResource;
use App\Http\Resources\JobCustomerResource;


use App\Customer;
use App\Users;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Alert;
use App\Http\Resources\CustomerResource;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Database\QueryException;

use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Str;

class JobController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $items = Job::with([
            'user','customer'
        ])->get();
        // $items = Job::all();

        if(\Request::segment(1) == 'api') {
            return response([
                'data'          => JobCustomerResource::collection($items)
            ], 200);
        }

        // if(\Request::segment(1) == 'api') {
        //     return response()->json([
        //         'success' => true,
        //         'data' => $items
        //         ], 200);
        // }

        
        return view('pages.admin.jobs.index', [
            'items' => $items
        ]);
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.admin.jobs.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(JobRequest $request)
    {
        $data = $request->all();
        
        try {
            $item = Job::create($data);
            // dd($item);
        } catch (QueryException $e) {
            
            if(\Request::segment(1) == 'api') {
                return response([
                    'status' => 'error',
                    'data' => $item
                ], 401);
            }
            return back()->with('error', 'Error Create');
        }    
        if(\Request::segment(1) == 'api') {
            $items = Job::findOrFail($item->id);
            return response([
                'data'          => new JobResource($items)
                // 'data'          => JobResource::collection($items)

            ], 200);           
        }

        Alert::success('Job Ditambahkan', $item->title.' berhasil ditambahkan');        
        return redirect()->route('jobs.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $item_jobs = Job::with([
            'customer','user'
        ])->where('title','like', "%{$id}%")->get();
        // $item_user = Users::findOrFail($item_jobs->users_id);

        if(\Request::segment(1) == 'api') {
            return response()->json([
                'data'                    => JobCustomerResource::collection($item_jobs),
                // 'user'                    => $item_user,
                ], 200);
        }

        // return view('pages.admin.jobs.detail', [
        //     'item' => $item
        // ]);
    }

    public function showIdUser($id)
    {
        $item_jobs = Job::with([
            'customer','user'
        ])->where('users_id',$id)->get();
        // $item_user = Users::findOrFail($item_jobs->users_id);

        if(\Request::segment(1) == 'api') {
            return response()->json([
                'data'                    => JobCustomerResource::collection($item_jobs),
                // 'user'                    => $item_user,
                ], 200);
        }

        // return view('pages.admin.jobs.detail', [
        //     'item' => $item
        // ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item = Job::findOrFail($id);

        return view('pages.admin.jobs.edit', [
            'item' => $item
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(JobRequest $request, $id)
    {
        $data = $request->all();
        $item = Job::findOrFail($id);
        try {
        $item->update($data);
        } catch (QueryException $e) {
            if(\Request::segment(1) == 'api') {
                return response([
                    'status' => 'error',
                    'data' => $item
                    // 'status' => $sell_properties
                ], 401);
            }
            // return back()->with('error', 'Error Update : '.getMessage() );
            return back()->with('error', 'Error Update');
        }  

        if(\Request::segment(1) == 'api') {
            $items = Job::findOrFail($item->id);
            return response([
                'data'          => new JobResource($items)

            ], 200);
        }
        Alert::success('Layanan Diupdate', $item->title.' berhasil diupdate');           
        return redirect()->route('jobs.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $item = Job::findOrFail($id);
        $item->delete();

        if(\Request::segment(1) == 'api') {
            return response([
                'data'          => new JobResource($item)
            ], 200);
        }
        Alert::success('Layanan Dihapus', $item->title.' berhasil dihapus');        
        return redirect()->route('jobs.index');
    }
}
