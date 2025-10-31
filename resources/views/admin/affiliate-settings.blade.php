@extends('core/base::layouts.master')

@section('content')
    <div class="main-content">
        <div class="page-title">
            <h3>Affiliate Settings</h3>
        </div>
        
        @if(session('success'))
            <div class="alert alert-success alert-dismissible fade show">
                {{ session('success') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            </div>
        @endif
        
        <div class="row">
            <div class="col-md-9">
                <div class="widget meta-boxes">
                    <div class="widget-title">
                        <h4>General Settings</h4>
                    </div>
                    <div class="widget-body">
                        <form method="POST" action="{{ route('admin.affiliate.settings.update') }}">
                            @csrf
                            
                            <div class="form-group mb-3">
                                <label class="control-label required">Default Commission Rate (%)</label>
                                <input type="number" class="form-control" name="affiliate_default_commission_rate" 
                                       value="{{ $affiliate_default_commission_rate }}" step="0.01" min="0" max="100" required>
                            </div>
                            
                            <div class="form-group mb-3">
                                <label class="control-label required">Minimum Payout Amount</label>
                                <input type="number" class="form-control" name="affiliate_minimum_payout" 
                                       value="{{ $affiliate_minimum_payout }}" step="0.01" min="0" required>
                            </div>
                            
                            <div class="form-group mb-3">
                                <label class="control-label">Payout Method</label>
                                <select class="form-control" name="affiliate_payout_method">
                                    <option value="manual" {{ $affiliate_payout_method == 'manual' ? 'selected' : '' }}>Manual</option>
                                    <option value="automatic" {{ $affiliate_payout_method == 'automatic' ? 'selected' : '' }}>Automatic</option>
                                </select>
                            </div>
                            
                            <div class="form-group mb-3">
                                <label class="control-label required">Cookie Duration (Days)</label>
                                <input type="number" class="form-control" name="affiliate_cookie_duration" 
                                       value="{{ $affiliate_cookie_duration }}" min="1" max="365" required>
                            </div>
                            
                            <div class="form-group mb-3">
                                <label class="control-label">
                                    <input type="checkbox" name="affiliate_auto_approve" value="1" 
                                           {{ $affiliate_auto_approve ? 'checked' : '' }}>
                                    Auto-approve new affiliates
                                </label>
                            </div>
                            
                            <div class="form-group">
                                <button type="submit" class="btn btn-info">Save Settings</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection