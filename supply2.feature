Feature: Supply deposit flow

  Background:
    Given User Jo
    And Underlying token WETH with 0
    And Underlying token WNEAR with 0
    And Digital token WETH 100
    And Digital token WNEAR 100

    Scenario: User Jo Supply 100 WETH token
      Given User Jo and DWETH contract
      When User Jo supply from DWETH contract 100 WETH
      Then Success flow expected
      And User balance is 0 WETH
      And User balance is 100 DWETH

      Scenario: User Jo supply 100 WNEAR token
        Given User Jo and DWNEAR contract
        When User Jo supply from DWETH contract 100 WNEAR
        Then Success flow expected
        And User balance is 0 WNEAR
        And User balance is 100 DWNEAR

