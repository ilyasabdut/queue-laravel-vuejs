<?php

namespace Tests\Unit;

use Tests\TestCase;

class AutomatedTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function test_get_users()
    {
        $response = $this->json('GET', '/api/users');
        $response->assertStatus(200);

    }

    public function test_get_usersq()
    {
        $response = $this->json('GET', '/api/usersq');
        $response->assertStatus(200);

    }

}
