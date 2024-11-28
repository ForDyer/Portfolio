Feature: Search by reference

    Background: User should be logged in
    Given Visit "URL_COREP" page
    Then Wait 2 second
    And Check "CORE BANKING LOGIN" is visible
    And Write "pass" in field "COREP-PASS"
    And Click on the 'Log in' object on the page
    Then Wait 2 second
    
    @corep
    Scenario Outline: Search By Reference
    And Click on object "COREP-HM"
    And Wait 2 second
    And Click on object "COREP-APRVL"
    And Wait 2 second
    And Check "Product and Product Operation" is visible
    And Click on object "COREP-AL-PRD-DD"
    And Click on object "COREP-WF"
    And Write "<Refno>" in field "COREP-WF-REF"
    And Wait 5 second
    And Write "<StartDate>" slowly in field "COREP-WF-SD-DF"
    And Write "<EndDate>" slowly in field "COREP-WF-ED-DF"
    And Click on object "COREP-WF-DFI"
    And Click on object "COREP-AL-INQ"
    And Check "COREP-WF-TBL" object has "<Refno>" text

    Examples:
            | Refno      | StartDate | EndDate   |
            | 1147307106 | 001012014 | 001012021 |