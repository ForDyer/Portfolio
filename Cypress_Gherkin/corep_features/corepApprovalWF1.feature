Feature: Search by date

    Background: User should be logged in
    Given Visit "URL_COREP" page
    Then Wait 2 second
    And Check "CORE BANKING LOGIN" is visible
    And Write "pass" in field "COREP-PASS"
    And Click on the 'Log in' object on the page
    Then Wait 2 second
    
    @corep
    Scenario Outline: Search By Date
    Then Click on object "COREP-HM"
    And Wait 2 second
    And Click on object "COREP-APRVL"
    And Wait 2 second
    And Check "Product and Product Operation" is visible
    And Click on object "COREP-AL-PRD-DD"
    And Wait 2 second
    And Click on object "COREP-WF"
    And Click on object "COREP-AL-PO-DD"
    Then Wait 5 second
    And Write "<ProductName>" in field "COREP-AL-PO-DD-SRCFLD"
    And Click on object "COREP-WF-PO"
    And Write "<StartDate>" slowly in field "COREP-WF-SD-DF"
    And Write "<EndDate>" slowly in field "COREP-WF-ED-DF"
    And Click on object "COREP-WF-DFI"
    And Click on object "COREP-AL-INQ"
    And Check "COREP-WF-TBL" object has "<Branch>" text 

    Examples:
            | StartDate   | ProductName              | EndDate     | Branch |
            | 001/01/2014 | Workflow Process Restart | 001/01/2021 | 99994  |

    