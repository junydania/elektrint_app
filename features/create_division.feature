Feature: As an administrator
  In order to link jobs to divisions
  I should be able to populate the system with new divisons

  Background:
    Given the following user account exist
      | email                | first_name  | last_name | password | password_confirmation | role           |
      | o.dania@icloud.com  | Osegbemoh    |  Dania    | 12345678 | 12345678              | manager        |


  Scenario:
    Given I visit the "sign_in" landing page
    And I fill in field "user_email" with "o.dania@icloud.com"
    And I fill in field "user_password" with "12345678"
    And I click on "Log In"
    And I click on "Job Division"
    And I click on "Create Division"
    And I fill in field 'Division Name' with 'Retail Operations'
    And I click on "Submit"
    Then I should see "New Business Division Successfully Added"