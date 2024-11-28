Feature: Search

    Background: User should be logged in
    Given Visit "DMS_URL" page
    Then Wait 2 second
    And Check "Distribution Management System" is visible
    Then Write "dms" in field "LOG_FLD"
    And Write "dms" in field "PASS_FLD"
    And Click on the 'Login' object on the page
    Then Wait 2 second
    And Check "My last 7 days bundles" is visible
    
    
    Scenario Outline: Negative Search
    Given Check "My last 7 days bundles" is visible
    Then Click on object "H_MENU"
    And Click on object "H_MENU"
    And Click on the 'Definitions' object on the page
    And Click on the 'Component' object on the page
    And Wait until "Component" is visible
    And Write "<srcQry>" in field "SRC_FLD"
    And Check "No results found" is visible

    Examples:
            | srcQry |
            | abcde  |