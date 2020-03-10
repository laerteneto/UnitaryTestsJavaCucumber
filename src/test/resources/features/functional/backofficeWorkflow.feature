#language: en
Feature: Check BackOffice workflow to get approval and reproval status

  Background: 
    Given I am in the login page
    When I log in the system with a(n) "backoffice" profile
    And I search for a "case" that is ready to be judged

  Scenario: Check the Accept button is ready to be accepted
    And I open the case
    Then The button "Accept" must be enabled

  Scenario: Check main information are being correctly displayed
    And I open the case
    Then The case "number" must be displayed in the left top
    And The field "Name" must be diplayed
    And The field "Legal Representative ID" must be diplayed
    And The field "Giro or MCC" must be diplayed
    And The field "Nombre de la cuenta" must be diplayed
    And The button "Cambiar proprietario" must be displayed
    And The field "Tipo de registro del caso" must be "Back Office"
    And The field "Proprietario del caso" must be "Back Office"

  Scenario: Check the workflow status New, In validation, and Cerrada are being correctly displayed
    And I open the case
    And The field "Estado" must be "New"
    When I accept the case
    And The field "Estado" must be "In validation"
    And I answer the following 15 questions as "Si"
    And I save the answers after seeing the summary
    Then workflow status must be "Cerrada"
    And The field "Proprietario del caso" must be "Underwriting"

  Scenario: Check the tab Casos is selected after looking for a case in the Search field
    Then The tab "Casos" is selected
