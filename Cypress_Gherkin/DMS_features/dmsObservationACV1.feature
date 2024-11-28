Feature: Search Without Parameters

    Background: User should be logged in
    Given Visit "DMS_URL" page
    Then Wait until "Distribution Management System" is visible
    Then Write "dms" in field "LOG_FLD"
    And Write "dms" in field "PASS_FLD"
    And Click on the 'Login' object on the page
    And Check "My last 7 days bundles" is visible
    And Click on object "H_MENU"
    And Click on the "Observations" object on the page
    And Click on the "Application Component Version" object on the page
    And Check "Application Component Version" is visible

    Scenario Outline: 
    Then Click on object "FTM_SRCBTN"
    And Check element "DMSACV_TBLFR" is exist