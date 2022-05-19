<?php

use ApiPlatform\Core\Bridge\Symfony\Bundle\Test\ApiTestCase;
use Symfony\Contracts\HttpClient\Exception\ClientExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\DecodingExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\RedirectionExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\ServerExceptionInterface;
use Symfony\Contracts\HttpClient\Exception\TransportExceptionInterface;

class ReservationTest extends ApiTestCase
{
    const EXPECTED_JSON_RESPONSE = '
        {
            "@context": "/api/contexts/Reservation",
            "@id": "/api/reservations/1",
            "@type": "Reservation",
            "checkin": "2022-05-16T00:00:00+02:00",
            "checkout": "2022-05-20T00:00:00+02:00",
            "guestNumber": 2,
            "firstname": "abdelilah",
            "lastname": "aassou",
            "billingAddress": "Johann-Clanze-Str 32",
            "billingCountry": "Deustchland",
            "postalCode": "48143",
            "city": "Munchen",
            "email": "aassou.abdelilah@gmail.com",
            "phone": "017676339941",
            "id": 1,
            "created": "2022-05-16T14:33:23+02:00",
            "createdBy": "admin",
            "updated": "2022-05-16T14:33:23+02:00",
            "updatedBy": "admin",
            "isPublished": true
        }
    ';

    /**
     * @var UnitTester
     */
    protected UnitTester $tester;

    protected function _before()
    {
    }

    protected function _after()
    {
    }

    /**
     * @throws TransportExceptionInterface
     * @throws ServerExceptionInterface
     * @throws RedirectionExceptionInterface
     * @throws DecodingExceptionInterface
     * @throws ClientExceptionInterface
     */
    public function testGetReservationById(): void
    {
        // When
        static::createClient()->request('GET', '/api/reservations/1');

        // Then
        $this->assertResponseIsSuccessful();

        $this->assertResponseHeaderSame(
            'content-type', 'application/ld+json; charset=utf-8'
        );

        $this->assertJsonContains(self::EXPECTED_JSON_RESPONSE);
    }

    // tests

    /**
     * @throws TransportExceptionInterface
     * @throws ServerExceptionInterface
     * @throws RedirectionExceptionInterface
     * @throws DecodingExceptionInterface
     * @throws ClientExceptionInterface
     */
    public function testGetAllReservations(): void
    {
        // When
        $response = static::createClient()->request('GET', '/api/reservations')->toArray();

        // Then
        $this->assertResponseIsSuccessful();

        $this->assertResponseHeaderSame(
            'content-type', 'application/ld+json; charset=utf-8'
        );

        $this->assertArrayHasKey('hydra:member', $response);
        $this->assertEquals('/api/contexts/Reservation', $response["@context"]);
        $this->assertEquals('/api/reservations', $response["@id"]);
        $this->assertEquals('hydra:Collection', $response["@type"]);
        $this->assertGreaterThan(0, $response["hydra:totalItems"]);
        $this->assertCount(5, $response["hydra:member"]);
    }

    /**
     * @throws ClientExceptionInterface
     * @throws DecodingExceptionInterface
     * @throws RedirectionExceptionInterface
     * @throws ServerExceptionInterface
     * @throws TransportExceptionInterface
     */
    public function testPagination(): void
    {
        // When
        $response = static::createClient()->request('GET', '/api/reservations/3')->toArray();

        // Then
        $this->assertResponseIsSuccessful();

        $this->assertResponseHeaderSame(
            'content-type', 'application/ld+json; charset=utf-8'
        );

        $this->assertEquals('/api/contexts/Reservation', $response["@context"]);
        $this->assertEquals('/api/reservations/3', $response["@id"]);
        $this->assertEquals('Reservation', $response["@type"]);
        $this->assertIsArray($response["reservations"]);
        $this->assertGreaterThan(0, $response["reservations"]);
    }

    /**
     * @throws TransportExceptionInterface
     */
    public function testGetReservationByIdFailure(): void
    {
        // When reservation with id 5555 does not exist
        static::createClient()->request('GET', '/api/reservations/5555');
        // Then HTTP Error 404 is returned
        $this->assertResponseStatusCodeSame(404);
    }
}

