package com.example

import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Test

class WelcomeMessageTest {

    @Test
    fun testWelcomeMessage() {
        assertEquals("Hello, world.", welcomeMessage())
    }
}