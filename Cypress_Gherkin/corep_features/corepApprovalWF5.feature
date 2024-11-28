Feature: Search by task and process names

  Background:
    Given Visit "URL_COREP" page
    And Write "pass" in field "COREP-PASS"
    Then Click on object "COREP-LOGB"
    And Wait 2 second
    And Check "Dashboard" is visible
    And Click on object "COREP-HM"
    Then Check "Approvals" is visible
    And Click on object "COREP-APRVL"
    Then Check "Product and Product Operation" is visible
    And Click on object "COREP-APRVL-TSKSTB"

  @corep
  Scenario Outline:
    Then Check element "COREP-LDB" is not exist
    And Click on object "COREP-ALTSK-PRNMDD"
    And Click on object "COREP-ALTSK-PRNMDDCAF"
    And Wait 10 second
    And Click on object "COREP-ALTSK-TSKNMDD"
    And Write "<taskName>" in field "COREP-ALTSK-TSKNM-SRCFLD" 
    And Click on object "COREP-ALTSK-TSKNMV"
    And Click on object "COREP-ALTSK-TSKTMPNM"
    And Click on object "COREP-ALTSK-TSKTNV"
    And Check element "COREP-LDB" is not exist
    And Click on object "COREP-ALTSK-INQBT"
    And Check element "COREP-LDB" is not exist
    And Check "COREP-ALTSK-TBL" object has "<taskName>" text
    
    And Check "COREP-ALTSK-PRNMDD" object has "<processName>" text
    And Click on object "COREP-ALTSK-CLRBT"
    And Click on object "COREP-ALTSK-STRTBRNCHDD"
    And Click on object "COREP-ALTSK-STRTBRNCHV"
    And Click on object "COREP-ALTSK-INQBT"
    And Check "COREP-ALTSK-TBL" object has "<Branch>" text
    And Click on object "COREP-ALTSK-CLRBT"

    Examples:
      | Branch      | taskName                                    | processName  |
      | NETHERLANDS | CAF APPR FI CRED AND RISK OR BANK RELATIONS | CAF WORKFLOW |

