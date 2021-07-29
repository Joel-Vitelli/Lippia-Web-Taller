Feature: Wikipedia Success/Fail

  @Stress
  Scenario Outline: m Search in Wikipedia success: <word>
    Given The user is in wikipedia page
    When The user search for <word>
    Then The <word> is searched correctly

    Examples:
      | word           |
      | Cryptocurrency0 |
      | Cryptocurrency1 |
      | Cryptocurrency2 |
      | Cryptocurrency3 |
      | Cryptocurrency4 |
      | Cryptocurrency5 |
      | Cryptocurrency6 |
      | Cryptocurrency7 |
      | Cryptocurrency8 |
      | Cryptocurrency9 |
      | Cryptocurrency10 |
      | Cryptocurrency11 |
      | Cryptocurrency12 |
      | Cryptocurrency13 |
      | Cryptocurrency14 |
      | Cryptocurrency15 |
      | Cryptocurrency16 |
      | Cryptocurrency17 |
      | Cryptocurrency18 |
      | Cryptocurrency19 |
      | Cryptocurrency20 |
      | Cryptocurrency21 |
      | Cryptocurrency22 |
      | Cryptocurrency23 |
      | Cryptocurrency24 |
      | Cryptocurrency25 |
      | Cryptocurrency26 |
      | Cryptocurrency27 |
      | Cryptocurrency28 |
      | Cryptocurrency29 |
      | Cryptocurrency30 |
      | Cryptocurrency31 |
      | Cryptocurrency32 |
      | Cryptocurrency33 |
      | Cryptocurrency34 |
      | Cryptocurrency35 |
      | Cryptocurrency36 |
      | Cryptocurrency37 |
      | Cryptocurrency38 |
      | Cryptocurrency39 |
      | Cryptocurrency40 |
      | Cryptocurrency41 |
      | Cryptocurrency42 |
      | Cryptocurrency43 |
      | Cryptocurrency44 |
      | Cryptocurrency45 |
      | Cryptocurrency46 |
      | Cryptocurrency47 |
      | Cryptocurrency48 |
      | Cryptocurrency49 |
      | Cryptocurrency50 |

  @Smoke
  Scenario Outline: m Search in Wikipedia fail: <word> with <wrongWord>
    Given The user is in wikipedia page
    When The user search for <word>
    Then The <wrongWord> is searched correctly

    Examples:
      | word           | wrongWord |
      | Cryptocurrency | Shares    |
    