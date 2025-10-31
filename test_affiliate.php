<?php
// Test affiliate tracking
session_start();

echo "<h2>Affiliate Test</h2>";

// Check if affiliate code is in session
if (isset($_SESSION['affiliate_referral'])) {
    echo "<p style='color: green;'>✓ Affiliate code in session: " . $_SESSION['affiliate_referral'] . "</p>";
} else {
    echo "<p style='color: red;'>✗ No affiliate code in session</p>";
}

// Check if affiliate cookie exists
if (isset($_COOKIE['affiliate_referral'])) {
    echo "<p style='color: green;'>✓ Affiliate cookie exists: " . $_COOKIE['affiliate_referral'] . "</p>";
} else {
    echo "<p style='color: red;'>✗ No affiliate cookie found</p>";
}

// Show current URL parameters
if (isset($_GET['ref']) || isset($_GET['affiliate'])) {
    $code = $_GET['ref'] ?? $_GET['affiliate'];
    echo "<p style='color: blue;'>Current affiliate parameter: " . htmlspecialchars($code) . "</p>";
}

echo "<hr>";
echo "<h3>Test Links:</h3>";
echo "<a href='?ref=TEST123'>Test with ?ref=TEST123</a><br>";
echo "<a href='?affiliate=DEMO456'>Test with ?affiliate=DEMO456</a><br>";
echo "<a href='test_affiliate.php'>Check tracking status</a>";
?>