Feature: FTM Outgoing Files Log//Clear feature

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

    Then Click on object "FTM_ENVDD"
    And Click on object "FTM_ENVDDV"

    Then Click on object "FTM_CNTRDD"
    And Click on object "FTM_CNTRDDV"

    Then Click on object "FTM_TRSFDD"
    And Select "NOSTRO_RECON - Send Outgoing Nostro recon report" in dropdown "FTM_TRSFDDLI" 
    And Click on object "FTM_TRSCLR"
    And Check "FTM_TRSFDD" object has "<ChkTrn>" text

    Then Click on object "FTM_STATEDD"
    And Click on object "FTM_STATEDD_DN"
    And Click on object "FTM_STATEDDCLR"
    And Check "FTM_STATEDD" object has "<ChkSt>" text 

    #Date picker 'today' and 'clear' btn check
    Then Click on object "FTM_DATICO"
    And Click on object "FTM_DATPCRTD"
    And Check element "FTM_DATFL" is exist
    And Click on object "FTM_DATICO"
    And Click on object "FTM_DATPCRCL"
    And Check element "FTM_DATEMP" is exist
    And Check "FTM_TBLCL" object has "<EmpTbl>" text
    Examples:
            | ChkTrn | ChkSt | EmpTbl           |
            | empty  | empty | No results found |