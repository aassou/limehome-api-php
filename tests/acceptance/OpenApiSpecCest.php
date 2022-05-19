<?php

use Codeception\Util\Locator;

class OpenApiSpecCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    // tests
    public function openApiSpecificationPageWorks(AcceptanceTester $I)
    {
        $I->wantTo('Check if the OpenAPI spec page loads correctly!');
        $I->pause();
        $I->amOnPage('/api');
        $I->see('Reservation');
        Locator::contains('class', 'swagger');
    }
}
