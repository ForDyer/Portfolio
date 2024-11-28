
Feature: Search by starting date

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
  Then Wait 5 second
  And Write "<StartDate>" slowly in field "COREP-ALTSK-SDT"
  And Write "<EndDate>" slowly in field "COREP-ALTSK-EDT"
  # And Click on object "COREP-ALTSK-EDTICON"
  # And Wait until "<Month>" is visible
  # And Click on object "COREP-ALTSK-DATEPICKERV"

  And Click on object "COREP-ALTSK-INQBT"
  And Wait until "<TblV>" is visible
  And Check "COREP-ALTSK-TBLR" object has "<Date>" text
        
  Examples:
    | StartDate   | EndDate     | Date | Month    | TblV          |
    | 001/01/2021 | 001/12/2021 | 2021 | February | Customer Name |
