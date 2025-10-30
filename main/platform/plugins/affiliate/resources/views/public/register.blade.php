<h1>Affiliate Registration</h1>
<form method="POST" action="{{ route('customer.affiliate.store') }}">
    @csrf
    <button type="submit">Register as Affiliate</button>
</form>