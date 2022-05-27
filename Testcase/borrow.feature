Feature: Borrow flow

  Background:
    Given User Jo
    And Digital token DWETH contract with supplied 100 tokens by user Jo
    And Digital token DWNEAR contract with supplied 100 tokens by user Jo

    Scenario: User Jo gonna borrow 100 WETH tokens - positive flow
      Given User Jo and DWETH contract
      When User Jo borrow 100 WETH tokens
      Then Success flow expected
