Feature: Field inputs testing

  Background: User should be logged in
    Given Visit "URL_COREP" page
    Then Wait 2 second
    And Check "CORE BANKING LOGIN" is visible
    And Write "pass" in field "COREP-PASS"
    And Click on the 'Log in' object on the page
    Then Wait 2 second
    And Click on object "H_MENU"
    And Click on object "COREP_EMT30204-MENUENTRY"

  @corep
  Scenario Outline: Testing all fields on the screen, including negative cases
    Given Check "EMT30204" is visible
    Then Write "<BICNo>" in field "COREP-EMT30204-BIC"
    And Check "COREP-EMT30204-INQBTN" object is enabled
    And Click on object "COREP-EMT30204-INQBTN"
    And Check element "COREP-LDB" is not exist 
    And Check "<BICNo>" is visible
    And Click on object "COREP-EMT30204-CLNUPBTN"
    And Check "No results found" is visible

    #Start of paging cases
    Then Write "<PagingBICNo>" slowly in field "COREP-EMT30204-BIC"
    And Click on object "COREP-EMT30204-INQBTN"
    And Check "COREP-EMT30204-PREVPAGE" object is disabled
    And Check "COREP-EMT30204-NEXTPAGE" object is disabled
    And Check "COREP-EMT30204-PAGENMB" object text is "1"
    And Wait 2 second
    And Click on object "COREP-EMT30204-CLNUPBTN"
    And Check "No results found" is visible

    Then Write "<PagingBankNm>" in field "COREP-EMT30204-BANKNAME"
    And Click on object "COREP-EMT30204-INQBTN"
    And Check "COREP-EMT30204-PREVPAGE" object is disabled
    And Check "COREP-EMT30204-PAGENMB" object text is "1"
    And Wait 2 second
    And Click on object "COREP-EMT30204-NEXTPAGE"
    And Check "COREP-EMT30204-PREVPAGE" object is enabled
    And Check "COREP-EMT30204-NEXTPAGE" object is enabled
    And Check "COREP-EMT30204-PAGENMB" object text is "2"
    And Click on object "COREP-EMT30204-NEXTPAGE"
    And Wait 2 second
    And Check "COREP-EMT30204-PAGENMB" object text is "3"
    And Check "COREP-EMT30204-NEXTPAGE" object is enabled
    #End of paging cases

    Then Click on object "COREP-EMT30204-CLNUPBTN"
    And Check "No results found" is visible
    And Write "<PagingBankNm>" in field "COREP-EMT30204-BANKNAME"
    And Click on object "COREP-EMT30204-INQBTN"
    And Click on object "COREP-EMT30204-BNKNMTBLHDR"
    And Check "COREP-EMT30204-BNKTBLCL" object text is "<SrtngBnk>"
    And Click on object "COREP-EMT30204-BICTBLHDR"
    And Check "COREP-EMT30204-BICTBLCL" object text is "<SrtngBIC>"
    And Click on object "COREP-EMT30204-CLNUPBTN"
    And Check "No results found" is visible

    Then Click on object "COREP-EMT30204-INQBTN"
    And Check "No results found" is invisible
    And Click on object "COREP-EMT30204-CLNUPBTN"

    Then Write "<BankNm>" in field "COREP-EMT30204-BANKNAME"
    And Click on object "COREP-EMT30204-INQBTN"
    And Check "<BankNm>" is visible
    And Click on object "COREP-EMT30204-CLNUPBTN"
    And Check "No results found" is visible

    Then Write "<BICNo>" in field "COREP-EMT30204-BIC"
    And Write "<BankNm>" in field "COREP-EMT30204-BANKNAME"
    And Click on object "COREP-EMT30204-INQBTN"
    And Check "<BICNo>" is visible
    And Check "<BankNm>" is visible
    And Click on object "COREP-EMT30204-CLNUPBTN"
    And Check "No results found" is visible

    Then Check "COREP-EMT30204-BIC" object text is ""
    And Check "COREP-EMT30204-BANKNAME" object text is ""
    And Click on object "COREP-EMT30204-INQBTN"
    And Check "No results found" is visible

    Then Write "<InvBICNo>" in field "COREP-EMT30204-BIC"
    And Write "<InvBankNm>" in field "COREP-EMT30204-BANKNAME"
    And Check field "COREP-EMT30204-BIC" has value "<ChkBICNo>" 
    And Check field "COREP-EMT30204-BANKNAME" has value "<ChkBankNm>"
    And Click on object "COREP-EMT30204-CLNUPBTN"
    And Check "No results found" is visible

    Examples:
      | BICNo | PagingBICNo | BankNm          | PagingBankNm | InvBICNo    | InvBankNm                                            | ChkBICNo  | ChkBankNm                                          | SrtngBnk                   | SrtngBIC |
      | 6512  | 10          | HYPOVEREINSBANK | B            | 12345678910 | 1234567891011121314151617181920212223242526272823910 | 123456789 | 12345678910111213141516171819202122232425262728239 | BAD GODESBERGER KREDITBANK | 10000000 |
      | 74366 | 12          | RAIFFEISENBANK  | N            | 12345678910 | 1234567891011121314151617181920212223242526272823910 | 123456789 | 12345678910111213141516171819202122232425262728239 | NABA FRANKFURT MAIN        | 10077777 |

