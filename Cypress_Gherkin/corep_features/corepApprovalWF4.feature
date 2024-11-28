Feature: Search by customer popup

    Background: User should be logged in
    Given Visit "URL_COREP" page
    Then Wait 2 second
    And Check "CORE BANKING LOGIN" is visible
    And Write "pass" in field "COREP-PASS"
    And Click on the 'Log in' object on the page
    Then Wait 2 second
    And Click on object "COREP-HM"
    And Wait 2 second
    And Click on object "COREP-APRVL"
    And Wait 2 second
    And Check "Product and Product Operation" is visible
    And Click on object "COREP-AL-PRD-DD"
    And Click on object "COREP-WF"

    @corep
    Scenario Outline: Search By Customer Popup
    Then Wait 5 second
    And Write "<StartDate>" slowly in field "COREP-WF-SD-DF"
    And Write "<EndDate>" slowly in field "COREP-WF-ED-DF"
    And Click on object "COREP-AL-PO-DD"
    And Click on object "COREP-WF-PO-WPT"
    And Click on object "COREP-WF-CUSTSRC"
    And Wait until "Customer Inquiry" is visible
    And Click on object "COREP-WF-CUSTSRC-B"
    And Write "<CustN>" in field "COREP-WF-CUSTSRC-CN"
    And Click on object "COREP-WF-CUSTSRC-INQ"
    And Wait 15 second
    And Check "COREP-WF-CUSTSRC-TBLCL" object has "<CustN>" text
    And Click on object "COREP-WF-CUSTSRC-TBLCL"
    And Click on object "COREP-WF-CUSTSRC-PRD"
    And Click on object "COREP-AL-INQ"
    And Check "COREP-WF-TBL" object has "<CustN>" text
    
    Examples:
            | CustN     | StartDate | EndDate   |
            | 25676 | 001012014 | 001012021 |
