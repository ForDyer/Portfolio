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
    Then Click on object "COREP-ALTSK-STRTBRNCHDD"
    And Click on object "COREP-ALTSK-STRTBRNCHV" 
    And Click on object "COREP-ALTSK-INQBT" 
    And Check "COREP-ALTSK-TBL" object has "<Branch>" text
    And Click on object "COREP-ALTSK-CLICON"
    And Check "COREP-ALTSK-STRTBRNCHDD" object has "<STRBRNCH_NEG>" text
    Examples:
      | Branch      | STRBRNCH_NEG |
      | NETHERLANDS | empty        |