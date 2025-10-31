<!DOCTYPE html>
<html>
<head>
    <title>Affiliate Test</title>
</head>
<body>
    <h2>Laravel Affiliate Test</h2>
    
    @if($session)
        <p style="color: green;">✓ Session: {{ $session }}</p>
    @else
        <p style="color: red;">✗ No session</p>
    @endif
    
    @if($cookie)
        <p style="color: green;">✓ Cookie: {{ $cookie }}</p>
    @else
        <p style="color: red;">✗ No cookie</p>
    @endif
    
    @if($param)
        <p style="color: blue;">Parameter: {{ $param }}</p>
    @endif
    
    <hr>
    <a href="/affiliate-test?ref=TEST123">Test ?ref=TEST123</a><br>
    <a href="/affiliate-test">Check status</a>
</body>
</html>