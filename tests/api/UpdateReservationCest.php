<?php

use App\Tests\api\AbstractReservationCest;
use Codeception\Util\HttpCode;

class UpdateReservationCest extends AbstractReservationCest
{
    const RESERVATION_ID = 7;

    public function _before(ApiTester $I)
    {
        $this->prepareHeader($I);
    }

    public function successful_reservation_update_via_api(ApiTester $I)
    {
        $I->wantToTest('A Successful Reservation Update via API');
        $I->sendPut(
            AbstractReservationCest::VALID_URL . '/' . self::RESERVATION_ID,
            AbstractReservationCest::VALID_JSON_REQUEST_BODY_PUT
        );
        $I->seeResponseCodeIsSuccessful();
        $I->seeResponseIsJson();
        $I->seeHttpHeader('content-type', 'application/ld+json; charset=utf-8');
    }

    public function notfound_reservation_update_via_api(ApiTester $I)
    {
        $I->wantToTest('A bad routing Reservation Update via API');
        $I->sendPut(
            AbstractReservationCest::VALID_URL . '/5555',
            AbstractReservationCest::VALID_JSON_REQUEST_BODY_PUT
        );
        $I->seeResponseCodeIsClientError();
        $I->dontSeeResponseCodeIs(HttpCode::OK);
    }
}
