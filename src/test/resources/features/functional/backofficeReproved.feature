#language: en
Feature: Check case status after BackOffice reproval and Underwriting approval/reproval

  Background: 
    Given I am in the login page
    When I log in the system with a(n) "backoffice" profile
    And I search for a "case" that is ready to be judged
    And I open the case
    And I accept the case
    And I answer the following 15 questions as "No"
    And I write a justification after seeing the summary
    And I save the answers
    Then I should see the case with status "Underwriting"
    And The "Accept" button must be "disabled"
    When I log out the system
    And I log in the system with a(n) "underwriting" profile
    And I search for a "case" that is ready to be judged
    And I open the case
    And I accept the case

  Scenario: Case reproved after backoffice and underwriting reproval
    When I answer the following 34 questions in order to get it "reproved"
    And I save the answers after seeing the summary
    Then I should see the case with status "reproved"

  Scenario: Case reproved after backoffice reproval and underwriting approval
    When I answer the following 34 questions in order to get it "approved"
    And I save the answers after seeing the summary
    Then I should see the case with status "reproved"
