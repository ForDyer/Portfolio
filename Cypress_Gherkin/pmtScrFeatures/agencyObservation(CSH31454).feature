Feature: Field inputs testing

  Background: User should be logged in
    Given Visit "URL_COREP" page
    Then Wait 2 second
    And Check "CORE BANKING LOGIN" is visible
    And Write "TOAD1234" in field "COREP-PASS"
    And Click on the 'Log in' object on the page
    Then Wait 2 second
    And Check "Dashboard" is visible
    Then Visit "COREP-CSH31454-PAGE" page

  @corep
  Scenario Outline: Testing all fields on the screen + negative cases
    Given Check "COREP-CSH31454-CUSTNMB" object is visible
    Then Write "<CustNum>" in field "COREP-CSH31454-CUSTNMB"
    And Click on object "COREP-INQ"

    Then Wait 1 second 
    And Check field "COREP-CSH31454-CUSTNM" has value "<CustNm>"
    And Check field "COREP-CSH31454-CUSTNMB" has value "<CustNum>"

    Then Check element "COREP-LDB" is not exist 
    And Click on object "COREP-CSH31454-TBLRW"
    And Check field "COREP-CSH31454-INFCUSTNMB" has value "<CustNum>"
    And Check field "COREP-CSH31454-INFCUSTNM" has value "<InfCustNm>"
    And Check field "COREP-CSH31454-INFROUTCUSTNMB" has value "<RtCustNm>" 

    Then Click on object "COREP-CLNUP"
    And Check "No results found" is visible

    Then Write "<CustNumNeg>" in field "COREP-CSH31454-CUSTNMB"
    And Click on object "COREP-INQ"
    And Check "COREP-CSH31454-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible 
    And Click on object "COREP-CSH31454-CUSTPOPUPCLBTN"
    And Check "No results found" is visible
    
    #Start of Customer inquiry popup positive cases
    Then Wait 1 second
    And Click on object "COREP-CSH31454-CUSTPOPUPBTN"
    And Check element "COREP-LDB" is not exist
    And Write "<CustNum>" in field "COREP-CSH31454-CUSTPOPUP-CUSTNMB"
    And Click on object "COREP-CSH31454-CUSTPOPUP-CORPTP"
    And Click on object "COREP-CSH31454-CUSTPOPUP-INDTP"
    And Click on object "COREP-CSH31454-CUSTPOPUP-INQBT"
    And Check element "COREP-LDB" is not exist
    And Wait 2 second
    And Check "COREP-CSH31454-CUSTPOPUP-CUSTYPETBLCL" object text is "Bank"

    Then Click on object "COREP-CSH31454-CUSTPOPUP-BNKTP"
    And Click on object "COREP-CSH31454-CUSTPOPUP-INDTP"
    And Clear in field "COREP-CSH31454-CUSTPOPUP-CUSTNMB"
    And Write "<IndCustNum>" in field "COREP-CSH31454-CUSTPOPUP-CUSTNMB"
    And Click on object "COREP-CSH31454-CUSTPOPUP-INQBT"
    And Check element "COREP-LDB" is not exist
    And Wait 1 second
    And Check "COREP-CSH31454-CUSTPOPUP-CUSTYPETBLCL" object text is "Individual"

    Then Click on object "COREP-CSH31454-CUSTPOPUP-INDTP"
    And Click on object "COREP-CSH31454-CUSTPOPUP-CORPTP"
    And Clear in field "COREP-CSH31454-CUSTPOPUP-CUSTNMB"
    And Write "<CorpCustNum>" in field "COREP-CSH31454-CUSTPOPUP-CUSTNMB"
    And Click on object "COREP-CSH31454-CUSTPOPUP-INQBT"
    And Check element "COREP-LDB" is not exist
    And Wait 1 second
    And Check "COREP-CSH31454-CUSTPOPUP-CUSTYPETBLCL" object text is "Corporate"

    Then Click on object "COREP-CSH31454-CUSTPOPUP-BRNCH"
    And Select "<Branch>" in dropdown "COREP-LIST"
    And Click on object "COREP-CSH31454-CUSTPOPUP-INQBT"
    And Check "COREP-CSH31454-CUSTPOPUP-BRNCHTBLCL" object text is "<Branch2>"

    Then Click on object "COREP-CSH31454-CUSTPOPUP-RESCD"
    And Select "<Residence>" in dropdown "COREP-LIST"
    And Clear in field "COREP-CSH31454-CUSTPOPUP-CUSTNMB"
    And Click on object "COREP-CSH31454-CUSTPOPUP-INQBT"
    And Check element "COREP-LDB" is not exist
    And Wait 2 second
    And Check "COREP-CSH31454-CUSTPOPUP-RESTBLCL" object text is "<Residence>"
    
    Then Write "<Surname>" in field "COREP-CSH31454-CUSTPOPUP-SRNM"
    And Click on object "COREP-CSH31454-CUSTPOPUP-INQBT"
    And Wait 1 second
    And Check "COREP-CSH31454-CUSTPOPUP-SRNMTBLCL" object text is "<Surname>"
    And Clear in field "COREP-CSH31454-CUSTPOPUP-SRNM"

    And Click on object "COREP-CSH31454-CUSTPOPUP-RLMNGR"
    And Select "<RelManager>" in dropdown "COREP-LIST"
    And Click on object "COREP-CSH31454-CUSTPOPUP-INQBT"
    And Check element "COREP-CSH31454-CUSTPOPUP-RLMNGRTBLCL" is exist

    And Clear in field "COREP-CSH31454-CUSTPOPUP-SRNM"
    And Click on object "COREP-CSH31454-CUSTPOPUP-RLMNGRCLR"
    And Click on object "COREP-CSH31454-CUSTPOPUP-CLSF"
    And Select "<Clasif>" in dropdown "COREP-LIST"
    And Click on object "COREP-CSH31454-CUSTPOPUP-INQBT"
    And Wait 2 second
    And Check "COREP-CSH31454-CUSTPOPUP-CLSFTBLCL" object text is "<Clasif>"

    And Click on object "COREP-CSH31454-CUSTPOPUP-CLSFCLR"
    And Write "<Name>" in field "COREP-CSH31454-CUSTPOPUP-NM"
    And Click on object "COREP-CSH31454-CUSTPOPUP-INQBT"
    And Check element "COREP-CSH31454-CUSTPOPUP-NMTBLCL" is exist

    And Clear in field "COREP-CSH31454-CUSTPOPUP-NM"
    And Write "<DOB>" slowly in field "COREP-CSH31454-CUSTPOPUP-DOB"
    And Click on object "COREP-CSH31454-CUSTPOPUP-INQBT"
    And Wait 2 second
    And Check "COREP-CSH31454-CUSTPOPUP-DOBTBLCL" object text is "<DOB2>"

    And Clear in field "COREP-CSH31454-CUSTPOPUP-DOB"
    And Click on object "COREP-CSH31454-CUSTPOPUP-STSCD"
    And Select "<StatusCd>" in dropdown "COREP-LIST"
    And Click on object "COREP-CSH31454-CUSTPOPUP-INQBT"
    And Wait 1 second
    And Check "COREP-CSH31454-CUSTPOPUP-STSCDTBLCL" object text is "<StatusCd2>"
    #End of Customer Popup positive cases

    #Start of Customer Popup negative cases
    Then Click on object "COREP-CRSSICON"
    And Wait 2 second
    And Write "<CustNumNeg>" in field "COREP-CSH31454-CUSTNMB" and hit Enter
    And Check "COREP-CSH31454-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible
    And Click on object "COREP-CSH31454-CUSTPOPUP-CLNUPBT"
    And Check "No results found" is visible 
    
    Then Write "<CustNumNeg>" slowly in field "COREP-CSH31454-CUSTPOPUP-CUSTNMB"
    And Check "COREP-CSH31454-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible 
    And Wait 2 second

    Then Write "<CustNumNeg>" in field "COREP-CSH31454-CUSTPOPUP-SRNM"
    And Check "COREP-CSH31454-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible

    Then Write "<BIC>" in field "COREP-CSH31454-CUSTPOPUP-BIC"
    And Check "COREP-CSH31454-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible

    Then Write "<DOB>" in field "COREP-CSH31454-CUSTPOPUP-DOB"
    And Check "COREP-CSH31454-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible

    Then Write "<CustNumNeg>" in field "COREP-CSH31454-CUSTPOPUP-ZIP"
    And Check "COREP-CSH31454-CUSTPOPUPHDR" object is visible
    And Check "No results found" is visible

    Then Click on object "COREP-CSH31454-CUSTPOPUP-RLMNGR"
    And Select "<RelManager>" in dropdown "COREP-LIST"
    And Check "No results found" is visible

    Then Click on object "COREP-CSH31454-CUSTPOPUP-BRNCH"
    And Select "<Branch>" in dropdown "COREP-LIST"
    And Check "No results found" is visible

    Then Click on object "COREP-CSH31454-CUSTPOPUP-RESCD"
    And Wait 1 second
    And Select "<Residence>" in dropdown "COREP-LIST"
    And Check "No results found" is visible

    Then Click on object "COREP-CSH31454-CUSTPOPUP-CLSF"
    And Select "<Clasif>" in dropdown "COREP-LIST"
    And Check "No results found" is visible

    Then Click on object "COREP-CSH31454-CUSTPOPUP-STSCD"
    And Wait 1 second
    And Select "<StatusCd>" in dropdown "COREP-LIST"
    And Check "No results found" is visible

    Then Click on object "COREP-CSH31454-CUSTPOPUP-INQBT"
    And Check "No results found" is visible 

    Then Click on object "COREP-CSH31454-CUSTPOPUP-CLNUPBT"
    And Check "No results found" is visible
    And Wait 1 second
    And Check element "COREP-CSH31454-CUSTPOPUP-CUSTNMB" is empty
    And Check element "COREP-CSH31454-CUSTPOPUP-SRNM" is empty
    And Check element "COREP-CSH31454-CUSTPOPUP-BIC" is empty
    And Check element "COREP-CSH31454-CUSTPOPUP-DOB" is empty
    And Check element "COREP-CSH31454-CUSTPOPUP-ZIP" is empty
    And Check field "COREP-CSH31454-CUSTPOPUP-RLMNGR" has value ""
    And Check field "COREP-CSH31454-CUSTPOPUP-BRNCH" has value ""
    And Check field "COREP-CSH31454-CUSTPOPUP-RESCD" has value ""
    And Check field "COREP-CSH31454-CUSTPOPUP-CLSF" has value ""
    And Check element "COREP-CSH31454-CUSTPOPUPSTSCDALL" is exist
    #End of Customer Popup negative cases 
    
    Examples:
      | CustNum | CustNumNeg     | CustNm              | Branch              | Branch2     | Residence | Surname | RelManager | Clasif | Name | DOB       | DOB2       | StatusCd | StatusCd2 | RtCustNm | IndCustNum | CorpCustNum | InfCustNm              |BIC|
      | 9       | 1111!@#$%^&*_+ | UBS AG(HEAD OFFICE) | 99994 - NETHERLANDS | NETHERLANDS | AUSTRIA   | PIM     | NL00612    | NPE    | PT   | 011111995 | 11/11/1995 | CLOSED   | Closed    | 9        | 100057064  | 100064218   | AG UBS AG(HEAD OFFICE) |ABNAAEAAIPC|


