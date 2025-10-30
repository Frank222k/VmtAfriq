@extends(BaseHelper::getAdminMasterLayoutTemplate())

@section('content')
    <div class="card">
        <div class="card-header">
            <h4>Affiliates</h4>
            <a href="{{ route('affiliate.create') }}" class="btn btn-primary">Add New Affiliate</a>
        </div>
        <div class="card-body">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Customer</th>
                        <th>Code</th>
                        <th>Commission Rate</th>
                        <th>Status</th>
                        <th>Total Earnings</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($affiliates as $affiliate)
                    <tr>
                        <td>{{ $affiliate->id }}</td>
                        <td>{{ $affiliate->customer->name ?? 'N/A' }}</td>
                        <td>{{ $affiliate->affiliate_code }}</td>
                        <td>{{ $affiliate->commission_rate }}%</td>
                        <td>{{ ucfirst($affiliate->status) }}</td>
                        <td>${{ number_format($affiliate->total_earnings, 2) }}</td>
                        <td>
                            <a href="{{ route('affiliate.edit', $affiliate->id) }}" class="btn btn-sm btn-primary">Edit</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            {{ $affiliates->links() }}
        </div>
    </div>
@endsection