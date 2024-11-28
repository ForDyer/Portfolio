Feature: Field inputs testing

  Background: User should be logged in
    Given Visit "URL_COREP" page
    Then Wait 2 second
    And Check "CORE BANKING LOGIN" is visible
    And Write "pass" in field "COREP-PASS"
    And Click on the 'Log in' object on the page
    Then Wait 2 second
    And Check "Dashboard" is visible
    Then Visit "COREP-CSH31451-PAGE" page

  @corep
  Scenario Outline: Positive + negative scenarios for Agency Definition page
    Then Check "COREP-CSH31451-CUSTNMB" object is visible
    And Click on object "COREP-CSH31451-CUSTNMB"
    And Write "<CustNum>" slowly in field "COREP-CSH31451-CUSTNMB"
    And Click on object "COREP-INQ"

    Then Check field "COREP-CSH31451-CUSTNM" has value "<CustNm>"
    And Check field "COREP-CSH31451-CUSTNMB" has value "<CustNum>"

    Then Check element "COREP-LDB" is not exist 
    And Click on object "COREP-CSH31451-TBLRW"
    And Check field "COREP-CSH31451-INFCUSTNMB" has value "<CustNum>"
    And Check field "COREP-CSH31451-INFCUSTNM" has value "<InfCustNm>"

    And Copy cell input "COREP-CSH31451-TBLCL-RTCUSTNMB" from the table
    And Check "COREP-CSH31451-ROUTCUSTNMBF" field contains cell input value

    And Copy cell input "COREP-CSH31451-TBLCL-RTCUSTNM" from the table
    And Check "COREP-CSH31451-ROUTCUSTNM" field contains cell input value

    And Copy cell input "COREP-CSH31451-TBLCL-CURR" from the table
    And Check "COREP-CSH31451-CURR" field like cell input text

    And Copy cell input "COREP-CSH31451-TBLCL-APPCD" from the table
    And Check "COREP-CSH31451-APPCD" field like cell input text

    Then Click on object "COREP-CLNUP"
    And Check "No results found" is visible

    #Negative cases for Customer Number Popup
    Then Write "<NegEntry>" in field "COREP-CSH31451-CUSTNMB" and hit Enter
    And Check "COREP-CSH31451-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible
    And Click on object "COREP-CSH31451-POPUP-CLNUPBTN"
    And Check "No results found" is visible 
    
    Then Write "<NegEntry>" slowly in field "COREP-CSH31451-CUSTPOPUPCUSTNMB"
    And Check "COREP-CSH31451-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible 
    And Wait 2 second

    Then Write "<NegEntry>" in field "COREP-CSH31451-CUSTPOPUPSRNM"
    And Check "COREP-CSH31451-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible

    Then Write "<BIC>" in field "COREP-CSH31451-CUSTPOPUPSWFTCD"
    And Check "COREP-CSH31451-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible

    Then Write "<DOB>" in field "COREP-CSH31451-CUSTPOPUPDOB"
    And Check "COREP-CSH31451-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible

    Then Write "<NegEntry>" in field "COREP-CSH31451-CUSTPOPUPZIP"
    And Check "COREP-CSH31451-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible

    Then Click on object "COREP-CSH31454-CUSTPOPUP-RLMNGR"
    And Select "<RelManager>" in dropdown "COREP-LIST"
    And Check "No results found" is visible

    Then Click on object "COREP-CSH31451-CUSTPOPUPBRNCH"
    And Select "<Branch>" in dropdown "COREP-LIST"
    And Check "No results found" is visible

    Then Click on object "COREP-CSH31451-CUSTPOPUPRESCD"
    And Wait 1 second
    And Select "<Residence>" in dropdown "COREP-LIST"
    And Check "No results found" is visible

    Then Click on object "COREP-CSH31451-CUSTPOPUPCLSF"
    And Select "<Clasif>" in dropdown "COREP-LIST"
    And Check "No results found" is visible

    Then Click on object "COREP-CSH31451-CUSTPOPUPSTSCD"
    And Wait 1 second
    And Select "<StatusCd>" in dropdown "COREP-LIST"
    And Check "No results found" is visible

    Then Click on object "COREP-CSH31451-POPUP-INQBT"
    And Check "No results found" is visible 

    Then Click on object "COREP-CSH31451-POPUP-CLNUPBTN"
    And Check "No results found" is visible
    And Wait 1 second
    And Check element "COREP-CSH31451-CUSTPOPUPCUSTNMB" is empty
    And Check element "COREP-CSH31451-CUSTPOPUPSRNM" is empty
    And Check element "COREP-CSH31451-CUSTPOPUPSWFTCD" is empty
    And Check element "COREP-CSH31451-CUSTPOPUPDOB" is empty
    And Check element "COREP-CSH31451-CUSTPOPUPZIP" is empty
    And Check field "COREP-CSH31454-CUSTPOPUP-RLMNGR" has value ""
    And Check field "COREP-CSH31451-CUSTPOPUPBRNCH" has value ""
    And Check field "COREP-CSH31451-CUSTPOPUPRESCD" has value ""
    And Check field "COREP-CSH31451-CUSTPOPUPCLSF" has value ""
    And Check element "COREP-CSH31451-CUSTPOPUPSTSCDALL" is exist  
  
    And Click on object "COREP-CRSSICON"
    And Check "No results found" is visible

    Then Write "<NegEntry>" in field "COREP-CSH31451-ROUTCUSTNMB" and hit Enter
    And Check "COREP-CSH31451-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible
    And Click on object "COREP-CSH31451-CRSSICON"
    And Check "No results found" is visible
    
    #Negative cases for Account Inquiry Popup
    Then Write "<CustNum>" slowly in field "COREP-CSH31451-CUSTNMB"
    And Click on object "COREP-INQ"
    And Click on object "COREP-CSH31451-TBLRW"
    And Wait 2 second
    And Write "<NegEntry>" in field "COREP-CSH31451-ACTACCNMB"
    And Click on object "COREP-CSH31451-ACTACCNMBPPBTN"
    And Check "COREP-CSH31451-ACCINQHDR" object is visible
    And Write "<NegEntry>" in field "COREP-CSH31451-ACCPOPUPACC"
    And Click on object "COREP-CSH31451-POPUP-INQBT"
    And Check element "COREP-CSH31451-ACCPOPUPNRF" is exist

    Then Click on object "COREP-CSH31451-POPUP-CLNUPBTN"
    And Check element "COREP-CSH31451-ACCPOPUPNRF" is exist
    And Write "<NegEntry>" in field "COREP-CSH31451-ACCPOPUPIBAN"
    And Click on object "COREP-CSH31451-POPUP-INQBT"
    And Check element "COREP-CSH31451-ACCPOPUPNRF" is exist

    Then Write "<NegEntry>" in field "COREP-CSH31451-ACCPOPUPCUSTNMB" and hit Enter
    And Check "COREP-CSH31451-CUSTPOPUPHDR" object is visible
    And Check element "COREP-CSH31451-ACCPOPUPNRF" is exist
    
    # #Checking New/Save/Update/Delete buttons
    # Then Click on several objects "COREP-CRSSICON"
    # And Check "COREP-CSH31451-NEWBTN" object is enabled
    # And Check "COREP-CSH31451-SAVEBTN" object is enabled
    # And Check "COREP-CSH31451-UPDATEBTN" object is enabled
    # And Check "COREP-CSH31451-DELETEBTN" object is enabled

    # Then Wait 2 second
    # And Click on object "COREP-CLNUP"
    # And Check "No results found" is visible
    # And Check "COREP-CSH31451-CUSTNMB" object is visible
    # And Click on object "COREP-CSH31451-CUSTNMB"
    # And Write "<CustNum>" in field "COREP-CSH31451-CUSTNMB"
    # And Click on object "COREP-INQ"
    # And Check element "COREP-LDB" is not exist 
    # And Click on object "COREP-CSH31451-TBLRW"
    # And Check field "COREP-CSH31451-INFCUSTNMB" has value "<CustNum>"
    # And Check field "COREP-CSH31451-INFCUSTNM" has value "<InfCustNm>"
    # And Clear in field "COREP-CSH31451-ROUTCUSTNMBF"
    # And Write "<NewRtCustNm>" slowly in field "COREP-CSH31451-ROUTCUSTNMB"
    # And Click on object "COREP-CSH31451-SAVEBTN"
    # And Check "COREP-CSH31451-APVLPUP" object is visible

    # Then Wait 2 second
    # And Click on object "COREP-CLNUP"
    # And Check "No results found" is visible
    # And Check "COREP-CSH31451-CUSTNMB" object is visible
    # And Click on object "COREP-CSH31451-CUSTNMB"
    # And Write "<CustNum>" slowly in field "COREP-CSH31451-CUSTNMB"
    # And Click on object "COREP-INQ"
    # And Check element "COREP-LDB" is not exist 
    # And Click on object "COREP-CSH31451-TBLRW"
    # And Check field "COREP-CSH31451-INFCUSTNMB" has value "<CustNum>"
    # And Check field "COREP-CSH31451-INFCUSTNM" has value "<InfCustNm>"
    # And Click on object "COREP-CSH31451-UPDATEBTN"
    # And Check "COREP-CSH31451-APVLPUP" object is visible
 
    # Then Click on object "COREP-CSH31451-NEWBTN"
    # And Check "No results found" is visible
    # And Check "COREP-CSH31451-APVLPUP" object is visible
    
    Examples:
    | CustNum | NegEntry       | CustNm              | Branch              | Branch2     | Residence | Surname  | RelManager | Clasif | Name | DOB       | DOB2       | StatusCd | StatusCd2 | InfCustNm              | NewRtCustNm |BIC|
    | 9       | 1111!@#$%^&*_+ | UBS AG(HEAD OFFICE) | 99994 - NETHERLANDS | NETHERLANDS | AUSTRIA   | LANISTER | NL10959    | NPE    | OERR | 029031965 | 29/03/1965 | CLOSED   | Closed    | AG UBS AG(HEAD OFFICE) | 33          |ABNAAEAAIPC|