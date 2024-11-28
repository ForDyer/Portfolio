Feature: Search by initiator

    Background: User should be logged in
    Given Visit "URL_COREP" page
    Then Wait 2 second
    And Check "CORE BANKING LOGIN" is visible
    And Write "pass" in field "COREP-PASS"
    And Click on the 'Log in' object on the page
    Then Wait 2 second
    
    @corep
    Scenario Outline: Search By Currency
    And Click on object "COREP-HM"
    And Wait 2 second
    And Click on object "COREP-APRVL"
    And Wait 2 second
    And Check "Product and Product Operation" is visible
    And Click on object "COREP-AL-PRD-DD"
    And Click on object "COREP-ABRRMT"
    And Wait 5 second
    And Write "<StartDate>" slowly in field "COREP-WF-SD-DF"
    And Write "<EndDate>" slowly in field "COREP-WF-ED-DF"
    And Click on object "COREP-AL-CURR-DD"
    And Click on object "COREP-AL-CURR-EUR"
    And Click on object "COREP-AL-INQ"
    And Check "COREP-WF-TBL" object has "EUR" text

    Examples:
            | StartDate | EndDate   |
            | 001012014 | 001012021 |