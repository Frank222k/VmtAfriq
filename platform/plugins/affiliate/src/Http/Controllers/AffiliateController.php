<?php

namespace Botble\Affiliate\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;

class AffiliateController extends BaseController
{
    public function index()
    {
        return view('plugins/affiliate::index');
    }

    public function create()
    {
        return view('plugins/affiliate::create');
    }

    public function store()
    {
        return redirect()->route('affiliate.index');
    }

    public function commissions()
    {
        return view('plugins/affiliate::commissions');
    }

    public function approveCommission($id)
    {
        return redirect()->route('affiliate.commissions');
    }
}