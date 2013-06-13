Feature: Hello World
    Testing the Hello World page that automatically gets generated when making a new bundle

    Scenario: Going to Hello World page
        When I am on homepage
        And I do nothing
        Then I should see "Congratulations! You have successfully installed a new Symfony application."

        When I go to "hello/world"
        Then I should see "Hello world!"