Feature: Delete Component
    
    Background: User should be logged in
    Given Visit "DMS_URL" page
    Then Wait 2 second
    And Check "Distribution Management System" is visible
    Then Write "dms" in field "LOG_FLD"
    And Write "dms" in field "PASS_FLD"
    And Click on the 'Login' object on the page
    Then Wait 2 second
    And Check "My last 7 days bundles" is visible


    Scenario Outline: Delete Component
    Given Check "My last 7 days bundles" is visible
    Then Click on object "H_MENU"
    And Click on object "H_MENU"
    And Click on the 'Definitions' object on the page
    And Click on the 'Component' object on the page
    And Wait until "Component" is visible
    And Write "t8" in field "SRC_FLD"
    Then Click on the 't8' object on the page
    And Click on object "DLT_BTN"
    And Wait until "Delete Confirmation" is visible
    Then Click on object "CONF_BTN"
    And Wait until "Component successfully deleted" is visible
