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

    Then Click on object "DMSACV_SRB"
    And Check "DMSACV_CNTBLCL" object has "<Component>" text
    And Check "DMSACV_APTBLCL" object has "<Application>" text
    And Check "DMSACV_CTTBLCL" object has "<Country>" text

    Then Click on object "DMSACV_CMCLRBTN"
    And Write "cb-cce-ivr" in field "DMSACV_CMSRCFLD"
    And Click on object "DMSACV_CMSRCICO"
    And Check "DMSACV_CMDDSRCRES" object has "<Alt>" text

    Then Click on object "DMSACV_CNCLRBTN"
    And Check field "DMSACV_CNDD" has value "<Empty>"

    Then Click on object "DMSACV_APTCLRB"
    And Check field "DMSACV_APDD" has value "<Empty>"
    Examples:
            | Component          | Country   | Application | Alt        | Empty |
            | cb-cce-call-center | Nederland | CLONE       | cb-cce-ivr |       |
    
    