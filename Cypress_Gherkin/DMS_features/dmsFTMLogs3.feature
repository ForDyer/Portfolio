Feature: FTM Outgoing Files Log//Dropdowns, table, search

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
    Then Click on object "FTM_OFL_TAB"

    Scenario Outline: 
    #Page layout check
    Then Check element "FTM_OFL_TAB" is exist
    And Check element "FTM_IFL_TAB" is exist
    And Check element "FTM_AJ_TAB" is exist
    
    Then Check "FTM_OFL_TAB" object has "Outgoing Files Log" text
    And Check "FTM_ENVDD" object has "<ChkEnvDD>" text
    And Check "FTM_CNTRDD" object has "<ChkCnDD>" text
    And Check "FTM_TBLCL" object has "<EmpTbl>" text

    Then Wait 2 second
    And Click on object "FTM_TRSFDD"
    And Click on object "FTM_TRSFDDVOUT"

    Then Write "<Date>" in field "FTM_DATFLD"
    
    Then Click on object "FTM_STATEDD"
    And Click on object "FTM_STATEDD_DN"

    Then Click on object "FTM_SRCBTN"
    And Check "FTM_TBL" object has "<ChkDate>" text

    Then Check "FTM_TBL" object has "<ChkTrn>" text

    Examples:
            | Date        | ChkDate    | ChkTrn     | ChkEnvDD | ChkCnDD   | EmpTbl           |
            | 021/07/2016 | 21/07/2016 | AFM_EXPORT | Test     | Nederland | No results found |
