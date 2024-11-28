
Feature: Search by customer, using popup, negative

  Background:
    Given Visit "URL_COREP" page
    And Write "pass" in field "COREP-PASS"
    Then Click on object "COREP-LOGB"
    And Check "Dashboard" is visible
    And Click on object "COREP-HM"
    Then Check "Approvals" is visible
    And Click on object "COREP-APRVL"
    Then Check "Product and Product Operation" is visible
    And Click on object "COREP-APRVL-TSKSTB"

  @corep
  Scenario Outline:
  Then Click on object "COREP-ALTSK-PRNMDD"
  And Click on object "COREP-APRVL-PRNV"
  And Wait 2 second
  And Click on object "COREP-ALTSK-INQBT"
  And Check "COREP-ALTSK-EMTBLMSG" object has "No results found" text
