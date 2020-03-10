#language: en
Feature: Check Merchant data

  Background: 
    Given I get a new token using Auth Develop POST json
    And I save the content generated in "access_token" in my enviroment variables
    When I edit the "Merchant" json file
    And I send a POST in the "Merchant" json file
    Then I should see a the status 200 with the tag "created" as "true"
    Given I am in the login page
    When I log in the system with a(n) "backoffice" profile
    And I open the "Cuentas" tab
    And I select the select box "Todas las Cuentas"
    And I search for a merchant "cuenta" created using the json file

  Scenario: Check the summary information is being properly displayed in the list
    And I should see the "Name" tag is the same as "Nombre de la cuenta"
    And I should see the Category as "Merchant"
    And I should see the "Phone" tag is the same as "Telefono"
    And I should see the "Type" tag is the same as "Tipo"
    When I open the "cuenta"
    And I should see in the top menu the Category as "Merchant"

  Scenario: Check general account information is being properly displayed in account details
    When I open the "cuenta"
    Then I should see the "Name" tag is the same as "Nombre de la cuenta"
    And I should see the "Phone" tag is the same as "Telefono"
    And I should see the "SituationStatus__c" tag is the same as "Situation status"
    And I should see the "SituationStatusDateUpdate__c" tag is the same as "Situation status date update"
    And I should see the "ShippingCountry" tag is the same as "Country"
    And I should see the "EconomicActivity__c" tag is the same as "Economic activity"
    And I should see the "ShippingStreet" tag is the same as "Dirección de envío"
    And I should see the "CommercialAddressReferencePoint1__c" tag is the same as "Commercial address reference point 1"
    And I should see the "CommercialAddressReferencePoint2__c" tag is the same as "Commercial address reference point 2"

  Scenario: Check merchant hierarch
    When I open the "cuenta"
    And I click in "Ver jerarquía de cuenta"
    Then I should see the correct hierarch with the "cuenta" as "Merchant"
