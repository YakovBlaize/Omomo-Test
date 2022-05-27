Feature: Withdraw flow

  Background:
    Given User Jo
    And Digital token 100 DWETH
    And Digital token 100 DWNEAR


    Scenario: User Jo withdraw 100 DWETH tokens
      Given User Jo and DWETH contract
      When User Jo withdraw from DWETH contract 100 tokens
      Then Success flow withdraw
      And User balance is 0 DWETH
      And User balance is 100 WETH

  Scenario: User Jo withdraw 100 DWNEAR tokens
    Given User Jo and DWNEAR contract
    When User Jo withdraw from DWNEAR contract 100 tokens
    Then Success flow withdraw
    And User balance is 0 DWNEAR
    And User balance is 100 WNEAR

    Scenario: User Jo withdraw 101 DWETH tokens
      Given User Jo and DWETH contract
      When User Jo withdraw from DWETH contract 101 tokens
      Then Failure flow expected

  Scenario: User Jo withdraw 101 DWNEAR tokens
    Given User Jo and DWNEAR contract
    When User Jo withdraw from DWNEAR contract 101 tokens
    Then Failure flow expected

