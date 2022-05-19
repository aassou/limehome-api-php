<?php

namespace App\Tests\api;

use ApiTester;

class AbstractReservationCest
{
    const VALID_URL = '/reservations';
    const INVALID_URL = '/reservation';
    const VALID_JSON_REQUEST_BODY = [
        "checkin" => "2022-05-16T14:32:56.020Z",
        "checkout" => "2022-05-16T14:32:56.020Z",
        "guestNumber" => 1,
        "firstname" => "moaad",
        "lastname" => "aassou",
        "billingAddress" => "Berliner Platz 39",
        "billingCountry" => "Deutschland",
        "postalCode" => "48143",
        "city" => "Munster",
        "email" => "tech2esto@gmail.com",
        "phone" => "017676885544",
        "created" => "2022-05-16T14:32:56.020Z",
        "createdBy" => "admin",
        "updated" => "2022-05-16T14:32:56.020Z",
        "updatedBy" => "admin",
        "isPublished" => true
    ];
    const INVALID_JSON_REQUEST_BODY = [
        "checkin" => "2022-05-16T14:32:56.020Z",
        "checkout" => "2022-05-16T14:32:56.020Z",
        "guestNumber" => "1",
        "firstname" => "moaad",
        "lastname" => "aassou",
        "billingAddress" => "Berliner Platz 39",
        "billingCountry" => "Deutschland",
        "postalCode" => "48143",
        "city" => "Munster",
        "email" => "tech2esto@gmail.com",
        "phone" => "017676885544",
        "created" => "2022-05-16T14:32:56.020Z",
        "createdBy" => "admin",
        "updated" => "2022-05-16T14:32:56.020Z",
        "updatedBy" => "admin",
        "isPublished" => true
    ];
    const VALID_JSON_REQUEST_BODY_PUT = [
        "firstname" => "Kamal",
        "lastname" => "Marjane"
    ];


    public function prepareHeader(ApiTester $I)
    {
        $I->haveHttpHeader('Content-Type', 'application/ld+json');
        $I->haveHttpHeader('accept', 'application/ld+json');
    }
}