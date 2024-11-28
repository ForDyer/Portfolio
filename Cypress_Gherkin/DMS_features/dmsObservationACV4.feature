Feature: Search, using all criterias

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
    Then Click on object "DMSACV_CNDD"
    And Click on object "DMSACV_CNDDV"

    And Click on object "DMSACV_CTDD"
    And Click on object "DMSACV_CTDDV"

    And Click on object "DMSACV_APDD"
    And Click on object "DMSACV_APDDV"

    Then Click on object "DMSACV_GRB"
    And Check "Select environments to generate Report" is visible
    And Click on object "DMSACV_SERPP"
    And Click on object "DMSACV_SERPPV"
    And Click on object "DMSACV_TEPP"
    And Click on object "DMSACV_TEPPV"
    And Click on object "DMSACV_GRPB"