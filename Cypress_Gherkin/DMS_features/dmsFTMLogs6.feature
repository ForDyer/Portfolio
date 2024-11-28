Feature: FTM Incoming Files Log//Check Mandatory Fields

    Background: User should be logged in
    Given Visit "DMS_URL" page
    Then Wait until "Distribution Management System" is visible
    Then Write "dms" in field "LOG_FLD"
    And Write "dms" in field "PASS_FLD"
    And Click on the 'Login' object on the page
    And Check "My last 7 days bundles" is visible
    And Click on object "H_MENU"
    Then Click on the "File Transfer Management" object on the page
    And Click on object "FTMHM_LOGS"
    And Check "FTM Logs" is visible

    Scenario Outline:
    #Page layout check
    Then Check element "FTM_OFL_TAB" is exist
    And Check element "FTM_IFL_TAB" is exist
    And Check element "FTM_AJ_TAB" is exist

    Then Check "FTM_TRSFDD" object has "<EmpTrs>" text
    And Check element "FTM_DATEMP" is exist
    And Check "FTM_STATEDD" object has "<EmpSt>" text
    And Check "FTM_TBLCL" object has "<EmpTbl>" text
    
    Then Click on object "FTM_SRCBTN"
    And Check element "FTM_DATERR" is exist
    And Check element "FTM_TRSFDDERR" is exist
    Examples:
            | EmpTrs | EmpSt | EmpTbl           |
            | empty  | empty | No results found |