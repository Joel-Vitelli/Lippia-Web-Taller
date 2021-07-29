Feature: Wikipedia success

  @Smoke
  Scenario Outline: s Search in Wikipedia success: <word>
    Given The user is in wikipedia page
    When The user search for <word>
    Then The <word> is searched correctly

    Examples:
      | word |
      |Cryptocurrency |
