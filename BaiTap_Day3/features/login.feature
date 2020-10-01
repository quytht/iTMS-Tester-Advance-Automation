Feature: Login form
    As a user,
    I want to login the website,
    So I need to have username and password

    Scenario: valid login
        Given the login page is opened successfully
        When user input username <user_name> and password <pass_word>
        Then user can login to the system <message>

    Scenario:invalid login
        Given the login page is opened successfully
        When user input username <user_name> and password <pass_word>
        Then show message <message>



        Examples:
            | user_name | pass_word             | message                        |
            | tomsmith  | SuperSecretPassword!  | You logged into a secure area! |
            | tomsmith1 | SuperSecretPassword!1 | Your username is invalid!      |