Feature: Acme Demo
    Testing the Hello World page that automatically gets generated when making a new bundle

    Scenario: Hello World
        When I am on homepage
        And I do nothing
        Then I should see "Welcome!"
        And I should see "Run The Demo"

        When I follow "Run The Demo"
        And I wait 1 ms
        Then I should see "Available demos"
        And I should see "Hello World"

        When I follow "Hello World"
        And I wait 1 ms
        Then I should see "Hello World!"

    Scenario: Access the secured area as user
        When I am on homepage
        And I do nothing
        Then I should see "Welcome!"
        And I should see "Run The Demo"

        When I follow "Run The Demo"
        And I wait 1 ms
        Then I should see "Available demos"
        And I should see "Access the secured area"

        When I follow "Access the secured area"
        And I wait 1 ms
        Then I should see "Login"

        When I fill in "_username" with "user"
        And I fill in "_password" with "userpass"
        And I press "Login"
        And I wait 1 ms
        Then I should see "Hello World!"
        And I should see "Hello resource secured for admin only."

        When I follow "Hello resource secured for admin only."
        And I wait 1 ms
        Then I should see "Access Denied"

    Scenario: Access the secured area as admin
        When I am on homepage
        And I do nothing
        Then I should see "Welcome!"
        And I should see "Run The Demo"

        When I follow "Run The Demo"
        And I wait 1 ms
        Then I should see "Available demos"
        And I should see "Access the secured area"

        When I follow "Access the secured area"
        And I wait 1 ms
        Then I should see "Login"

        When I fill in "_username" with "admin"
        And I fill in "_password" with "adminpass"
        And I press "Login"
        And I wait 1 ms
        Then I should see "Hello World!"
        And I should see "Hello resource secured for admin only."

        When I follow "Hello resource secured for admin only."
        And I wait 1 ms
        Then I should see "Hello World secured for Admins only!"

    Scenario: Go to the login page as user
        When I am on homepage
        And I do nothing
        Then I should see "Welcome!"
        And I should see "Run The Demo"

        When I follow "Run The Demo"
        And I wait 1 ms
        Then I should see "Available demos"
        And I should see "Go to the login page"

        When I follow "Go to the login page"
        And I wait 1 ms
        Then I should see "Login"