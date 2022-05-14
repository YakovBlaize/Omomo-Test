Feature: User connect wallet flow

  Background:
    Given The user Jo
    And Near wallet
    And Chrome browser

  Scenario: User Jo gonna connect wallet - positive flow <Checking the wallet connection>
    Given User Jo and wallet Near
    When User Jo connects the wallet
    Then Success wallet connected
    And Wallet displayed on the OMOMO home page


  Scenario: User Jo gonna disconnected wallet - positive flow <Checking the wallet disconnection>
    Given User Jo and wallet Near
    When User Jo disconnect wallet
    Then Success wallet disconnect
    And Wallet not displayed on the OMOMO home page




