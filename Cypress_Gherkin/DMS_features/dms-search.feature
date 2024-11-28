Feature: Search
  
  Background: User is Logged In
      Given Visit "DMS_URL" page
      Then Wait until "Distribution Management System" is visible
      And Write "USER" in field "USER_CODE_BOX" from data
      And Write "PASSWORD" in field "PASSWORD_BOX" from data
      And Click on the "Login" object on the page
      Then Wait until "Dashboard" is visible

  Scenario Outline: Search Component
      Given Click on object "MENU_BUTTON"
      Then Wait until "Dashboard" is visible
      And Click on the "Definitions" object on the page
      Then Wait until "Component" is visible
      And Click on the "Component" object on the page
      Then Wait until "Module" is visible
      And Click on object "COMPONENT_NAME"
      Then Write <component_name> in field "COMPONENT_NAME"
      And Check "RESULTS_TABLE" object has <component_name> text
    Examples:
      | component_name |
      | "ErayTest"     |
      | "cb-cce-call-center-infra"|

  # Scenario Outline: Search Application
  #     Given Click on object "MENU_BUTTON"
  #     Then Wait until "Definitions" is visible
  #     And Click on the "Definitions" object on the page
  #     Then Wait until "Application" is visible
  #     And Click on the "Application" object on the page
  #     Then Check "Group Code" is visible
  #     And Click on object "APPLICATION_NAME"
  #     Then Write <application_name> in field "APPLICATION_NAME"
  #     And Check "APPLICATION_TABLE" object has <application_name> text
  #   Examples:
  #     | application_name |
  #     | "Delete Test1"   |
  #     | "PUBLICCONTENT"  |