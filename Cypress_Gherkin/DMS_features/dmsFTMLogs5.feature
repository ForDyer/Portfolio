Feature: FTM Outgoing Files Log//Page layout and pagination

    Background: User should be logged in
    Given Visit "DMS_URL" page
    Then Wait until "Distribution Management System" is visible
    Then Write "dms" in field "LOG_FLD"
    And Write "dms" in field "PASS_FLD"
    And Click on the 'Login' object on the page
    And Check "My last 7 days bundles" is visible
    And Click on object "H_MENU"
    Then Click on the "File Transfer Management" object on the page
    And Click on object "FTHM_CONS"
    And Check "FTM Consoles" is visible
    Then Click on object "FTM_FTPSRVDEF_TAB"

    Scenario Outline: 
    #Page layout check
    #Then Check element "FTM_OFL_TAB" is exist
    #And Check element "FTM_IFL_TAB" is exist
    #And Check element "FTM_AJ_TAB" is exist

    #Neg=OK
    Then Check element "FTM_PAG" is exist
    And Check "FTM_PAG" object has "<ChkPag>" text
    And Click on object "FTM_PAG_NXT"
    And Check "FTM_PAG" object has "<ChkPag>" text
    Examples:
            | ChkPag |
            | 1 to   |