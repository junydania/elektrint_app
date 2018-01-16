Feature: As an administrator
  In order to let users select available jobs
  I should create new jobs in the system


  Background:

    Given the following user account exist
      | email                | first_name  | last_name | password | password_confirmation | role           |
      | o.dania@laffhub.com  | Osegbemoh   | Dania     | 12345678 | 12345678              | manager        |


    And the following job families exist
      | family_name                  |
      | Busienss Development         |
      | Retail Technology            |
      | Finance                      |
      | Personnel                    |
      | Logistics                    |

    And the following business units exist
      | unit_name                |
      | Retail Operations        |
      | Infrastructure           |
      | Development              |


    And the following divisions exist
      | division_name           |
      | Projects               |
      | Operations             |


    And the following organizational units exist
      | unit_name                   |
      | Oniru                       |
      | Upcountry                   |


    And the following primary clusters exist
      | cluster_name                      |
      | Revenue Assurance                 |
      | Customer On boarding              |


    And the following secondary clusters exist
      | cluster_name                      |
      | Business Management               |
      | Business Development              |

    And the following work level exist
      | level_name                        |
      | Head                              |
      | Manager                           |


  Scenario:
    Given I visit the "sign_in" landing page
    And I fill in field "user_email" with "o.dania@laffhub.com"
    And I fill in field "user_password" with "12345678"
    And I click on "Log In"
    And I click on "Job"
    And I click on "Create Job"
    And I fill in field 'Job Name' with 'Manager, IT Infrastructure'
    And I select "12" from "SBG Grades"
    And I select "Retail Technology" from "Job Family"
    And I select "Infrastructure" from "Business Unit"
    And I select "Projects" from "Division"
    And I select "Upcountry" from "Organizational Unit"
    And I select "Revenue Assurance" from "Primary Cluster"
    And I select "Business Development" from "Secondary Cluster"
    And I select "Head" from "Work Level"
    And I click on "Add Skill"
    And I fill in field 'Skill' with 'OOP and Ruby on Rails skills'
    And I click on "Submit New Job"
    Then I should see "New Job Successfully Added"

