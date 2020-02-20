#language: en
Feature: Check case status after BackOffice approval and Underwriting approval/reproval

  Background: 
    Given I am in the login page
    And I log in the system with a(n) "backoffice" profile
    And I search for a "case" that is ready to be judged
    And I open the case
    When I accept the case
    And I answer the following 15 questions as "Sí"
    And I see the summary
    And I save the answers
    Then I should see the case with status "Underwriting"
    And The "Accept" button must be "disabled"
    When I log out the system
    And I log in the system with a(n) "underwriting" profile
    And I search for a "case" that is ready to be judged
    Then I open the case
    And I accept the case

  Scenario: Case approved after backoffice and underwriting approval
    Given I answer the following 34 questions in order to get it "approved"
    When I save the answers after seeing the summary
    Then I should see the case with status "approved"

  Scenario: Case reproved after backoffice approval and underwriting reproval
    Given I answer the following 34 questions in order to get it "reproved"
    When I save the answers after seeing the summary
    Then I should see the case with status "reproved"
