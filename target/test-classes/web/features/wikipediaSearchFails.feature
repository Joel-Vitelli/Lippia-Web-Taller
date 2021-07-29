Feature: Wikipedia Fail

  @Smoke
  Scenario Outline: Search in Wikipedia fail: <word> with <wrongWord>
    Given The user is in wikipedia page
    When The user search for <word>
    Then The <wrongWord> is searched correctly

    Examples:
      | word           | wrongWord |
      | Cryptocurrency | Shares    |