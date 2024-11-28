Feature: Account Popup positive and negative cases

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
  Scenario Outline: Account popup cases

#Account Inquiry Popup Cases Start
  Then Wait 1 second
  And Click on object "COREP-DEP70448-ACTTB"
  And Click on object "COREP-DEP70448-ACCPOPUPBTN"
  And Check "COREP-DEP70448-ACCINQHDR" object is visible
  And Write "<CustNum>" in field "COREP-DEP70448-ACCPOPUPCUSTNMB"
  And Click on object "COREP-DEP70448-ACCPOPUPINQBTN"
  And Check "COREP-DEP70448-ACCPOPUPCUSTNMBTBLCL" object text is "<CustNum>"

  Then Click on object "COREP-DEP70448-ACCPOPUPCLRBTN"
  And Check "No results found" is visible
  And Write "<IBAN>" in field "COREP-DEP70448-ACCPOPUPIBAN"
  And Click on object "COREP-DEP70448-ACCPOPUPINQBTN"
  And Check "COREP-DEP70448-ACCPOPUPIBANTBLCL" object text is "<IBAN>"

  Then Click on object "COREP-DEP70448-ACCPOPUPCLRBTN"
  And Check "No results found" is visible
  And Write "<AccNum>" in field "COREP-DEP70448-ACCPOPUPACC"
  And Click on object "COREP-DEP70448-ACCPOPUPINQBTN"
  And Check "COREP-DEP70448-ACCPOPUPACCNUMTBLCL" object text is "<AccNum>"

  Then Click on object "COREP-DEP70448-ACCPOPUPCLRBTN"
  And Check "No results found" is visible
  And Click on object "COREP-DEP70448-ACCPOPUPBRNCH"
  And Select "<Branch>" in dropdown "COREP-LIST"
  And Click on object "COREP-DEP70448-ACCPOPUPINQBTN"
  And Check "COREP-DEP70448-ACCPOPUPBRNCTBLCL" object text is "<Branch2>"

  Then Click on object "COREP-DEP70448-ACCPOPUPCLRBTN"
  And Check "No results found" is visible
  And Click on object "COREP-DEP70448-ACCPOPUPCURR"
  And Select "<Curr>" in dropdown "COREP-LIST"
  And Click on object "COREP-DEP70448-ACCPOPUPINQBTN"
  And Check "COREP-DEP70448-ACCPOPUPCURRTBLCL" object text is "<Curr>"

  Then Click on object "COREP-DEP70448-ACCPOPUPCLRBTN"
  And Check "No results found" is visible
  And Click on object "COREP-DEP70448-ACCPOPUPACCTP"
  And Select "<AccTyp>" in dropdown "COREP-LIST"
  And Click on object "COREP-DEP70448-ACCPOPUPINQBTN"
  And Check "COREP-DEP70448-ACCPOPUPACCTPTBLCL" object text is "<AccTyp>"

  Then Click on object "COREP-DEP70448-ACCPOPUPCLRBTN"
  And Check "No results found" is visible
  And Click on object "COREP-DEP70448-ACCPOPUPACCSBTP"
  And Select "<AccSubTyp>" in dropdown "COREP-LIST"
  And Click on object "COREP-DEP70448-ACCPOPUPINQBTN"
  And Check "COREP-DEP70448-ACCPOPUPACCSBTPTBLCL" object text is "<AccSubTyp2>"

  Then Click on object "COREP-DEP70448-ACCPOPUPCLRBTN"
  And Check "No results found" is visible
  And Click on object "COREP-DEP70448-ACCPOPUPSPC"
  And Select "<SpCode>" in dropdown "COREP-LIST"
  And Click on object "COREP-DEP70448-ACCPOPUPINQBTN"
  And Check "COREP-DEP70448-ACCPOPUPSPCTBLCL" object text is "<SpCode2>"

  Then Click on object "COREP-DEP70448-ACCPOPUPCLRBTN"
  And Check "No results found" is visible
  And Click on object "COREP-DEP70448-ACCPOPUPSTC"
  And Select "<StatusCd>" in dropdown "COREP-LIST"
  And Click on object "COREP-DEP70448-ACCPOPUPINQBTN"
  And Check "COREP-DEP70448-ACCPOPUPSTCTBLCL" object text is "<StatusCd2>"

#Negative cases for Account Inquiry Popup
  Then Check "COREP-DEP70448-ACCINQHDR" object is visible
  And Write "<CustNumNeg>" in field "COREP-DEP70448-ACCPOPUPACC"
  And Click on object "COREP-DEP70448-ACCPOPUPINQBTN"
  And Check "No results found" is visible

  Then Click on object "COREP-DEP70448-ACCPOPUPCLRBTN"
  And Check "No results found" is visible
  And Write "<CustNumNeg>" in field "COREP-DEP70448-ACCPOPUPIBAN"
  And Click on object "COREP-DEP70448-ACCPOPUPINQBTN"
  And Check "No results found" is visible

  Then Write "<CustNumNeg>" in field "COREP-DEP70448-ACCPOPUPCUSTNMB" and hit Enter
  And Check "COREP-DEP70448-CUSTPOPUPHDR" object is visible
  And Check "No results found" is visible

  Examples:
    | CustNum | CustNumNeg     | CustNm              | Branch              | Branch2     | Residence | Surname | RelManager | Clasif | Name | DOB       | DOB2       | StatusCd | StatusCd2 | IndCustNum | CorpCustNum | AccNum     | IBAN               | Curr | AccTyp  | AccSubTyp                 | AccSubTyp2 | AccSubTypTD       | COB   | SpCode          | SpCode2 | BIC         |
    | 9       | 1111!@#$%^&*_+ | UBS AG(HEAD OFFICE) | 99994 - NETHERLANDS | NETHERLANDS | AUSTRIA   | PIM     | NL00612    | NPE    | PT   | 011111995 | 11/11/1995 | CLOSED   | 0         | 100057064  | 100064218   | 0019015402 | NL11FBHL0019015402 | EUR  | CURRENT | Current Account Corporate | 00         | FIDUCIARY DEPOSIT | Loans | Nostro Accounts | N       | ABNAAEAAIPC 3