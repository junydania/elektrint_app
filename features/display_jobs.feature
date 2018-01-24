Feature: As an administrator
  In order to know the available jobs in the system
  I should be able to see the list of all jobs in the system


  Background:

    Given the following user account exist
      | email                | first_name  | last_name | password | password_confirmation | role           |
      | o.dania@laffhub.com  | Osegbemoh   | Dania     | 12345678 | 12345678              | manager        |


    And the following job families exist
      | family_name                  |
      | Business Development         |
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
      | Customer On Boarding              |


    And the following secondary clusters exist
      | cluster_name                      |
      | Business Management               |
      | Business Development              |

    And the following work level exist
      | level_name                        |
      | Head                              |
      | Manager                           |

    And the following jobs exist
      | job_name                | sbg_grade | job_family             | business_unit      | organizational_unit | division        | primary_cluster       | secondary_cluster        | work_level |
      | Business Analyst        | 10        | Business Development   | Retail Operations  | Oniru               | Projects        | Revenue Assurance     | Business Management      | Head       |
      | Developer               | 10        | Retail Technology      | Development        | Upcountry           | Projects        | Customer On Boarding  | Business Development     | Head       |
      | Retail Analyst          | 11        | Business Development   | Development        | Upcountry           | Projects        | Customer On Boarding  | Business Development     | Head       |
      | Customer Support        | 12        | Retail Technology      | Infrastructure     | Upcountry           | Operations      | Customer On Boarding  | Business Development     | Head       |
      | Facilities Manager      | 12        | Business Development   | Infrastructure     | Oniru               | Operations      | Revenue Assurance     | Business Management      | Head       |

  Scenario:
    Given I visit the "sign_in" landing page
    And I fill in field "user_email" with "o.dania@laffhub.com"
    And I fill in field "user_password" with "12345678"
    And I click on "Log In"
    And I click on "Job"
    And I click on "View Jobs"
    Then I should see "Business Analyst"

