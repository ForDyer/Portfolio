Feature: Edit Component 
    
    Background: User should be logged in
    Given Visit "DMS_URL" page
    Then Wait 2 second
    And Check "Distribution Management System" is visible
    Then Write "dms" in field "LOG_FLD"
    And Write "dms" in field "PASS_FLD"
    And Click on the 'Login' object on the page
    Then Wait 5 second
        
    Scenario Outline: Edit Component
    Given Check "My last 7 days bundles" is visible
    Then Click on object "H_MENU"
    And Click on object "H_MENU"
    And Click on the 'Definitions' object on the page
    And Click on the 'Component' object on the page
    And Wait until "Component" is visible
    And Write "Testus" in field "SRC_FLD"
    And Check element "COMP_TBLCL" is exist
    And Click on object "COMP_TBLCL"
    And Click on object "COMP_EDIT"
    And Wait until "Edit DmsComponent" is visible
    And Click on object "COMP_MODULE_DD"
    And Click on object "COMP_MODULE_CCE"
    And Click on object "COMP_SAVE"
    Then Wait until "Component successfully updated" is visible
    And Check "CCE" is visible