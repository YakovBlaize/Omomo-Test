Feature: User deposit supply flow

  Background:
    Given The user Jo
    And Near wallet testnet
    And User have 100 token WETH
    And User have 100 token WNEAR
    And User have 100 token STNEAR


  Scenario: User Jo deposited DWETH 100 tokens - positive flow <Success flow>
    Given User Jo and WETH widget
    When User Jo deposited 100 tokens DWETH
    Then Success flow deposit
    And Values change in the widget (Total Deposited)
    And Value change in the widget "Total supplied"
    And User balance is 0 WETH

  Scenario: User Jo deposited DWNEAR 100 tokens - positive flow <Success flow>
    Given User Jo and WNEAR widget
    When User Jo deposited 100 tokens DWNEAR
    Then Success flow deposit
    And Values change in the widget (Total Deposited)
    And Value change in the widget "Total supplied"
    And User balance is 0 WNEAR

  Scenario: User Jo deposited STNEAR 100 tokens - positive flow <Success flow>
    Given User Jo and STNEAR widget
    When User Jo deposited 100 tokens STNEAR
    Then Success flow deposit
    And Values change in the widget (Total Deposited)
    And Value change in the widget "Total supplied"
    And User balance is 0 STNEAR

  Scenario: User Jo deposited 110 DWETH tokens - negative flow <Not enough tokens>
    Given User Jo and WETH widget
    When User Jo deposited 110 tokens WETH
    Then Failure flow expected

