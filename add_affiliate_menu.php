<?php
// Add affiliate menu item to admin dashboard
echo '<script>
document.addEventListener("DOMContentLoaded", function() {
    // Find ecommerce menu and add affiliate link
    const ecommerceMenu = document.querySelector("a[href*=\"ecommerce\"]");
    if (ecommerceMenu) {
        const affiliateLink = document.createElement("a");
        affiliateLink.href = "/admin/affiliate";
        affiliateLink.innerHTML = "<i class=\"fas fa-users\"></i> Affiliates";
        affiliateLink.className = "nav-link";
        ecommerceMenu.parentNode.appendChild(affiliateLink);
    }
});
</script>';
?>