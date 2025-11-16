<?php

require_once 'bootstrap/app.php';

use Botble\Location\Services\ImportLocationService;
use Botble\Location\Enums\ImportType;
use Botble\Base\Enums\BaseStatusEnum;

$importService = new ImportLocationService();

$locations = [
    // Countries
    [
        'import_type' => ImportType::COUNTRY,
        'name' => 'Canada',
        'nationality' => 'Canadian',
        'status' => BaseStatusEnum::PUBLISHED,
        'order' => 1,
    ],
    // States
    [
        'import_type' => ImportType::STATE,
        'name' => 'Ontario',
        'country' => 'Canada',
        'abbreviation' => 'ON',
        'status' => BaseStatusEnum::PUBLISHED,
        'order' => 1,
    ],
    // Cities
    [
        'import_type' => ImportType::CITY,
        'name' => 'Toronto',
        'country' => 'Canada',
        'state' => 'Ontario',
        'status' => BaseStatusEnum::PUBLISHED,
        'order' => 1,
    ],
];

$importService->handle($locations);
echo "Imported " . $importService->count() . " locations successfully!\n";