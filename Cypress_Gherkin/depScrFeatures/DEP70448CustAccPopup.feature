Feature: Customer Popup positive and negative cases

  Background: User should be logged in
  Given Visit "CORE_PLUS" page
  Then Wait 2 second
  And Check "CORE BANKING LOGIN" is visible
  And Write "pass" in field "COREP-PASS"
  And Click on the 'Log in' object on the page
  Then Wait 2 second
  And Check "Dashboard" is visible
  Then Visit "TRX_OBSERVATION" page

  @DEP70448
  Scenario Outline: Customer popup cases
  
  #Customer popup cases, positive, start
  Then Click on object "COREP-DEP70448-CUSTPOPUPBTN"
  And Check "Customer Inquiry" is visible
  And Check element "COREP-LDB" is not exist
  And Write "<CustNum>" in field "COREP-DEP70448-CUSTPOPUP-CUSTNMB"
  And Click on object "COREP-DEP70448-CUSTPOPUP-CORPTP"
  And Click on object "COREP-DEP70448-CUSTPOPUP-INDTP"
  And Click on object "COREP-DEP70448-POPUP-INQBT"
  And Check element "COREP-LDB" is not exist
  And Wait 2 second
  And Check "COREP-DEP70448-CUSTPOPUP-CUSTYPETBLCL" object text is "Bank"

  Then Click on object "COREP-DEP70448-CUSTPOPUP-BNKTP"
  And Click on object "COREP-DEP70448-CUSTPOPUP-INDTP"
  And Clear in field "COREP-DEP70448-CUSTPOPUP-CUSTNMB"
  And Write "<IndCustNum>" in field "COREP-DEP70448-CUSTPOPUP-CUSTNMB"
  And Click on object "COREP-DEP70448-POPUP-INQBT"
  And Check element "COREP-LDB" is not exist
  And Wait 2 second
  And Check "COREP-DEP70448-CUSTPOPUP-CUSTYPETBLCL" object text is "Individual"

  Then Click on object "COREP-DEP70448-CUSTPOPUP-INDTP"
  And Click on object "COREP-DEP70448-CUSTPOPUP-CORPTP"
  And Clear in field "COREP-DEP70448-CUSTPOPUP-CUSTNMB"
  And Write "<CorpCustNum>" in field "COREP-DEP70448-CUSTPOPUP-CUSTNMB"
  And Click on object "COREP-DEP70448-POPUP-INQBT"
  And Check element "COREP-LDB" is not exist
  And Wait 2 second
  And Check "COREP-DEP70448-CUSTPOPUP-CUSTYPETBLCL" object text is "Corporate"

  Then Click on object "COREP-DEP70448-CUSTPOPUP-BRNCH"
  And Select "<Branch>" in dropdown "COREP-LIST"
  And Click on object "COREP-DEP70448-POPUP-INQBT"
  And Check "COREP-DEP70448-CUSTPOPUP-BRNCHTBLCL" object text is "<Branch2>"

  Then Click on object "COREP-DEP70448-CUSTPOPUP-RESCD"
  And Select "<Residence>" in dropdown "COREP-LIST"
  And Clear in field "COREP-DEP70448-CUSTPOPUP-CUSTNMB"
  And Click on object "COREP-DEP70448-POPUP-INQBT"
  And Check element "COREP-LDB" is not exist
  And Wait 2 second
  And Check "COREP-DEP70448-CUSTPOPUP-RESTBLCL" object text is "<Residence>"
  
  Then Write "<Surname>" in field "COREP-DEP70448-CUSTPOPUP-SRNM"
  And Click on object "COREP-DEP70448-POPUP-INQBT"
  And Wait 1 second
  And Check "COREP-DEP70448-CUSTPOPUP-SRNMTBLCL" object text is "<Surname>"
  And Clear in field "COREP-DEP70448-CUSTPOPUP-SRNM"

  And Click on object "COREP-DEP70448-CUSTPOPUP-RLMNGR"
  And Select "<RelManager>" in dropdown "COREP-LIST"
  And Click on object "COREP-DEP70448-POPUP-INQBT"
  And Check element "COREP-DEP70448-CUSTPOPUP-RLMNGRTBLCL" is exist

  And Clear in field "COREP-DEP70448-CUSTPOPUP-SRNM"
  And Click on object "COREP-DEP70448-CUSTPOPUP-RLMNGRCLR"
  And Click on object "COREP-DEP70448-CUSTPOPUP-CLSF"
  And Select "<Clasif>" in dropdown "COREP-LIST"
  And Click on object "COREP-DEP70448-POPUP-INQBT"
  And Wait 2 second
  And Check "COREP-DEP70448-CUSTPOPUP-CLSFTBLCL" object text is "<Clasif>"

  And Click on object "COREP-DEP70448-CUSTPOPUP-CLSFCLR"
  And Write "<Name>" in field "COREP-DEP70448-CUSTPOPUP-NM"
  And Click on object "COREP-DEP70448-POPUP-INQBT"
  And Check element "COREP-DEP70448-CUSTPOPUP-NMTBLCL" is exist

  And Clear in field "COREP-DEP70448-CUSTPOPUP-NM"
  And Write "<DOB>" slowly in field "COREP-DEP70448-CUSTPOPUP-DOB"
  And Click on object "COREP-DEP70448-POPUP-INQBT"
  And Wait 2 second
  And Check "COREP-DEP70448-CUSTPOPUP-DOBTBLCL" object text is "<DOB2>"

  And Clear in field "COREP-DEP70448-CUSTPOPUP-DOB"
  And Click on object "COREP-DEP70448-CUSTPOPUP-STSCD"
  And Select "<StatusCd>" in dropdown "COREP-LIST"
  And Click on object "COREP-DEP70448-POPUP-INQBT"
  And Wait 1 second
  And Check "COREP-DEP70448-CUSTPOPUP-STSCDTBLCL" object text is "<StatusCd2>"

  #Negative cases, customer popup
  Then Check "COREP-DEP70448-CUSTPOPUPHDR" object is visible
  And Check "No results found" is visible
  And Click on object "COREP-DEP70448-CUSTPOPUPCLBTN"
  And Check "No results found" is visible
  And Check element "COREP-DEP70448-CUSTPOPUPHDR" is not exist
  
  Then Write "<CustNumNeg>" in field "COREP-DEP70448-CUSTNMB" and hit Enter
  And Check "COREP-DEP70448-CUSTPOPUPHDR" object is visible
  And Check "No results found" is visible
   
  Then Write "<CustNumNeg>" slowly in field "COREP-DEP70448-CUSTPOPUP-CUSTNMB"
  And Check "COREP-DEP70448-CUSTPOPUPHDR" object is visible
  And Check "No results found" is visible 
  And Wait 2 second

  Then Write "<CustNumNeg>" in field "COREP-DEP70448-CUSTPOPUP-SRNM"
  And Check "COREP-DEP70448-CUSTPOPUPHDR" object is visible
  And Check "No results found" is visible

  Then Write "<DOB>" in field "COREP-DEP70448-CUSTPOPUP-DOB"
  And Check "COREP-DEP70448-CUSTPOPUPHDR" object is visible
  And Check "No results found" is visible

  Then Write "<CustNumNeg>" in field "COREP-DEP70448-CUSTPOPUP-ZIP"
  And Check "COREP-DEP70448-CUSTPOPUPHDR" object is visible
  And Check "No results found" is visible

  Then Click on object "COREP-DEP70448-CUSTPOPUP-RLMNGR"
  And Select "<RelManager>" in dropdown "COREP-LIST"
  And Check "No results found" is visible

  Then Click on object "COREP-DEP70448-CUSTPOPUP-BRNCH"
  And Select "<Branch>" in dropdown "COREP-LIST"
  And Check "No results found" is visible

  Then Click on object "COREP-DEP70448-CUSTPOPUP-RESCD"
  And Wait 1 second
  And Select "<Residence>" in dropdown "COREP-LIST"
  And Check "No results found" is visible

  Then Click on object "COREP-DEP70448-CUSTPOPUP-CLSF"
  And Select "<Clasif>" in dropdown "COREP-LIST"
  And Check "No results found" is visible

  Then Click on object "COREP-DEP70448-CUSTPOPUP-STSCD"
  And Wait 1 second
  And Select "<StatusCd>" in dropdown "COREP-LIST"
  And Check "No results found" is visible

  Then Click on object "COREP-DEP70448-POPUP-INQBT"
  And Check "No results found" is visible 

  Then Click on object "COREP-DEP70448-POPUP-CLNUPBT"
  And Check "No results found" is visible
  And Wait 1 second
  And Check element "COREP-DEP70448-CUSTPOPUP-CUSTNMB" is empty
  And Check element "COREP-DEP70448-CUSTPOPUP-SRNM" is empty
  And Check element "COREP-DEP70448-CUSTPOPUP-DOB" is empty
  And Check element "COREP-DEP70448-CUSTPOPUP-ZIP" is empty
  And Check field "COREP-DEP70448-CUSTPOPUP-RLMNGR" has value ""
  And Check field "COREP-DEP70448-CUSTPOPUP-BRNCH" has value ""
  And Check field "COREP-DEP70448-CUSTPOPUP-RESCD" has value ""
  And Check field "COREP-DEP70448-CUSTPOPUP-CLSF" has value ""
  And Check element "COREP-DEP70448-CUSTPOPUP-STSCDOPN" is exist  

  And Click on object "COREP-CRSSICON"
  And Check "No results found" is visible
  #Customer popup cases end

    Examples:
      | CustNum | CustNumNeg     | CustNm              | Branch              | Branch2     | Residence | Surname | RelManager | Clasif | Name | DOB       | DOB2       | StatusCd | StatusCd2 | IndCustNum | CorpCustNum | AccNum     | IBAN               | Curr | AccTyp  | AccSubTyp         | AccSubTypTD       | COB   | SpCode        |
      | 9       | 1111!@#$%^&*_+ | UBS AG(HEAD OFFICE) | 99994 - NETHERLANDS | NETHERLANDS | AUSTRIA   | PIM     | NL00612    | NPE    | PT   | 011111995 | 11/11/1995 | CLOSED   | Closed    | 100057064  | 100064218   | 0019015402 | NL11FBHL0019015402 | EUR  | CURRENT | Margin Account FI | FIDUCIARY DEPOSIT | Loans | Loro Accounts |