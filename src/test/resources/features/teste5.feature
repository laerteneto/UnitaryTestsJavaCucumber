#language: en
Feature: Check Login

  Background: 
    Given I am in the login page
    When I log in the system with a(n) "backoffice" profile

  Scenario: Check the BackOffice login
    Then The button I must see I am looged as a "backoffice" profile

  Scenario: Check the Underwriting login
    Then The button I must see I am looged as a "underwriting" profile
