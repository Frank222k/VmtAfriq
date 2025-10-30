<?php

return [
    [
        'name' => 'Affiliates',
        'flag' => 'affiliate.index',
        'parent_flag' => 'ecommerce.index',
    ],
    [
        'name' => 'Create',
        'flag' => 'affiliate.create',
        'parent_flag' => 'affiliate.index',
    ],
    [
        'name' => 'Edit',
        'flag' => 'affiliate.edit',
        'parent_flag' => 'affiliate.index',
    ],
    [
        'name' => 'Delete',
        'flag' => 'affiliate.destroy',
        'parent_flag' => 'affiliate.index',
    ],
];