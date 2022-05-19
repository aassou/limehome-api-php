<?php

use App\Tests\api\AbstractReservationCest;
use Codeception\Util\HttpCode;

class CreateReservationCest extends AbstractReservationCest
{
    public function _before(ApiTester $I)
    {
        $this->prepareHeader($I);
    }

    public function successful_reservation_creation_via_api(ApiTester $I)
    {
        $I->wantToTest('A successful Reservation Creation via API');
        $I->sendPost(
            AbstractReservationCest::VALID_URL,
            AbstractReservationCest::VALID_JSON_REQUEST_BODY
        );
        $I->seeResponseCodeIsSuccessful();
        $I->seeResponseIsJson();
    }

    public function notfound_reservation_creation_via_api(ApiTester $I)
    {
        $I->wantToTest('A bad routing Reservation Creation via API');
        $I->sendPost(
            AbstractReservationCest::INVALID_URL,
            AbstractReservationCest::VALID_JSON_REQUEST_BODY
        );
        $I->seeResponseCodeIsClientError();
        $I->dontSeeResponseCodeIs(HttpCode::OK);
    }

    public function invalid_body_request_reservation_creation_via_api(ApiTester $I)
    {
        $I->wantToTest('An invalid Request Body Reservation Creation via API');
        $I->sendPost(
            AbstractReservationCest::VALID_URL,
            AbstractReservationCest::INVALID_JSON_REQUEST_BODY
        );
        $I->seeResponseCodeIsClientError();
        $I->dontSeeResponseCodeIs(HttpCode::OK);
    }
}
