Background: 
        Given The user Bobo
        And metamask wallet
        And PC


Scenario: User Bobo gonna connect wallet metamask to OMOMO
        Given User Bobo and wallet metamask
        When User Bobo connects the wallet
        Then Success wallet connected
        And Wallet displayed MOMO


Scenario: User Bobo disconnected walet
        Given