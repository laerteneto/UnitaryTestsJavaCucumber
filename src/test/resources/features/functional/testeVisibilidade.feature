#language: en
Feature: Status underwritting case display for BackOffice profile

  Background: 
    Given that I'm on the login page

  Scenario: Check "Backofice" user can see "underwriting" cases
    When I log in to the system with a "backoffice" profile
    And I select cases with "underwritting" status
    Then I view cases with "underwritting" status

  Scenario: Check "underwriting" user can see "Backofice" cases
    When I log in to the system with a "underwriting" profile
    And I select cases with "backoffice" status
    Then I view the cases with "BackOffice" status
