<?php

// Clear cache directories
$cacheDirs = [
    'storage/framework/cache/data',
    'storage/framework/views',
    'bootstrap/cache'
];

foreach ($cacheDirs as $dir) {
    if (is_dir($dir)) {
        $files = glob($dir . '/*');
        foreach ($files as $file) {
            if (is_file($file)) {
                unlink($file);
            }
        }
    }
}

echo "Cache cleared successfully!\n";