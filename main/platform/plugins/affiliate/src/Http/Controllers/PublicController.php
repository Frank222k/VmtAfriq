<?php

namespace Botble\Affiliate\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;

class PublicController extends BaseController
{
    public function dashboard()
    {
        return view('plugins/affiliate::public.dashboard');
    }

    public function register()
    {
        return view('plugins/affiliate::public.register');
    }

    public function store(Request $request)
    {
        return redirect()->route('customer.affiliate.dashboard')->with('success', 'Affiliate account created successfully');
    }
}