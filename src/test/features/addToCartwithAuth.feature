Feature: Add products to cart

    Background:
        Given User navigates to the application
        And User click on the login link

    @auth
    Scenario: Authenticated User - Add to cart using admin
        When user search for a "Roomies"
        And user add the book to the cart
        Then the cart badge should get updated

    @auth
    Scenario: UnAuthenticated User - Add to cart using lead
        When user search for a "All of Us with Wings"
        And user add the book to the cart
        Then the cart badge should get updated