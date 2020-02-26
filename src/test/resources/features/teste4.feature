#language: en
Feature: Check Underwriting workflow to get approval and reproval status

  Background: 
    Given I am in the login page
    When I log in the system with a(n) "backoffice" profile
    And I search for a "case" that is ready to be judged
    And I open the case
    And I accept the case
    And I answer the following 15 questions as "Sí"
    And I see the summary
    And I save the answers
    Then I should see the case with status "Underwriting"
    And The "Accept" button must be "disabled"
    When I log out the system
    And I log in the system with a(n) "underwriting" profile
    And I search for a "case" that is ready to be judged
    And I open the case

  Scenario: Check the Accept button is ready to be accepted
    Then The button "Accept" must be enabled

  Scenario: Check main information are being correctly displayed
    Then The case "number" must be displayed in the left top
    And The field "Name" must be diplayed
    And The field "Legal Representative ID" must be diplayed
    And The field "Giro or MCC" must be diplayed
    And The field "Nombre de la cuenta" must be diplayed
    And The button "Seguir" must be diplayed
    And The button "Cambiar proprietario" must be displayed
    And The field "Tipo de registro del caso" must be "Underwriting"
    And The field "Proprietario del caso" must be "User Underwriting"

  Scenario: Check the workflow status New, In validation, and Approved are being correctly displayed
    And The field "Estado" must be "New"
    When I accept the case
    And The field "Estado" must be "In validation"
    When I answer the following 34 questions in order to get it "approved"
    And I save the answers after seeing the summary
    Then workflow status must be "Approved"
    And The field "Proprietario del caso" must be "User Underwriting"

  Scenario: Check the workflow status New, In validation, and Reproved are being correctly displayed
    And The field "Estado" must be "New"
    When I accept the case
    And The field "Estado" must be "In validation"
    When I answer the following 34 questions in order to get it "reproved"
    And I save the answers after seeing the summary
    Then workflow status must be "Reproved"
    And The field "Proprietario del caso" must be "User Underwriting"
