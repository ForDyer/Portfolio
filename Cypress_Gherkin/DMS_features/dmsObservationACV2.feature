Feature: Submitting empty generate report popup, checking error message

    Background: User should be logged in
    Given Visit "DMS_URL" page
    Then Wait until "Distribution Management System" is visible
    Then Write "dms" in field "LOG_FLD"
    And Write "dms" in field "PASS_FLD"
    And Click on the 'Login' object on the page
    And Check "My last 7 days bundles" is visible
    And Click on object "H_MENU"
    Then Click on the "Observations" object on the page
    And Click on the "Application Component Version" object on the page
    And Check "Application Component Version" is visible

    Scenario Outline:
    Then Click on object "DMSACV_GRB"
    And Check "Select environments to generate Report" is visible
    And Click on object "DMSACV_GRPB"
    And Check "You need choose both source and target environments!" is visible