Feature: Component Add

    Background: User should be logged in
    Given Visit "DMS_URL" page
    Then Wait 2 second
    And Check "Distribution Management System" is visible
    Then Write "dms" in field "LOG_FLD"
    And Write "dms" in field "PASS_FLD"
    And Click on the 'Login' object on the page
    Then Wait 5 second


    Scenario Outline: Add Component
    Given Wait until 'My last 7 days bundles' is visible
    Then Click on object "H_MENU"
    And Click on the "Definitions" object on the page
    And Click on the "Component" object on the page
    And Wait until "Component" is visible
    Then Click on object "COMP_ADD"
    And Click on object "COMP_MODULE_DD"
    Then Click on object "COMP_MODULE_CCE"
    Then Write "t8" in field "COMP_NAME_FLD"
    Then Click on object "COMP_CT_DD"
    And Click on object "COMP_CT_NL"
    Then Click on object "COMP_CN_DD"
    And Click on object "COMP_CN_NL"
    Then Click on object "COMP_CN_DD"
    And Click on object "COMP_SAVE"
    Then Wait until "New component successfully created" is visible