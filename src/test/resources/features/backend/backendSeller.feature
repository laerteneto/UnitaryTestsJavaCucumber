#language: en
Feature: Check Seller data

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
    And I search for a seller "cuenta" created using the json file

  Scenario: Check the summary information is being properly displayed in the list
    And I should see the "Name" tag is the same as "Nombre de la cuenta"
    And I should see the Category as "Filiación"
    And I should see the seller "Phone" tag is the same as "Telefono"
    And I should see the seller "Type" tag is the same as "Tipo"
    When I open the "cuenta"
    And I should see in the top menu the Category as "Filiación"

  Scenario: Check general account information is being properly displayed in account details
    When I open the "cuenta"
    Then I should see the seller "Name" tag is the same as "Nombre de la cuenta"
    And I should see the seller "Phone" tag is the same as "Telefono"
    And I should see the seller "SituationStatus__c" tag is the same as "Situation status"
    And I should see the seller "SituationStatusDateUpdate__c" tag is the same as "Situation status date update"
    And I should see the seller "CategoryFree__c" tag is the same as "Category Free"
    And I should see the seller "Type" tag is the same as "Tipo"
    And I should see the seller "SellerCode__c" tag is the same as "Seller code"
    And I should see the seller "ShippingStreet" tag is the same as "Dirección de envío"
    And I should see the seller "CommercialAddressReferencePoint1__c" tag is the same as "Commercial address reference point 1"
    And I should see the seller "CommercialAddressReferencePoint2__c" tag is the same as "Commercial address reference point 2"

  Scenario: Check general contact information is being properly displayed in seller details
    When I open the "cuenta"
    And I open the "Relacionado" subtab
    Then I should see the "Contactos relacionados" menu with 1 contact created
    And I should see the contact "Firstname" and "Lastname" tags as the as "Nombre del contacto"
    And I should see the contact "Email"tag as the as "Email"
    When I click in "ver relación"
    Then I should see the "Contactos relacionados" menu with 1 contact created
    And I should see the contact "Firstname" and "Lastname" tags as the as "Nombre del contacto"
    Then I should see the seller "Name" tag is the same as "Nombre de la cuenta"

  Scenario: Check seller hierarch
    When I open the "cuenta"
    And I click in "Ver jerarquía de cuenta"
    Then I should see the correct hierarch with the "cuenta" as "Filiación"
