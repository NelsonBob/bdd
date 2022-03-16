Feature: Player scoring

  @CombinationValues
  Scenario : A player expect the Token
    Given start a game with Nelson at <CombinationValues> and Yacine at <2,2,1>
    When Nelson won the game handle against Yacine
    Then Nelson score should be at <expectedToken>

    Examples:
      | CombinationValues | expectedToken |
      | 421               | 10            |
      | 3 As              | 7             |
      | 2 As – Six        | 6             |
      | 3 Six             | 6             |
      | 2 As – Cinq       | 5             |
      | 3 Cinq            | 5             |
      | 2 As –Quatre      | 4             |
      | 3 Quatre          | 4             |
      | 2 As – Trois      | 3             |
      | 3 Trois           | 3             |
      | 2 as –deux        | 2             |
      | 3 deux            | 2             |
      | 2,2,1             | 2             |


  @Charge
  Scenario: the game become in charge without advantage
    Given start a game with Nelson at <421> and Yacine at <2AS-SIX>
    When Nelson won the game handle against Yacine
    Then Yacine scores should be add <10>

    Examples:
      | CombinationValues | expectedToken |
      | 421               | 10            |
      | 3 As              | 7             |
      | 2 As – Six        | 6             |
      | 3 Six             | 6             |
      | 2 As – Cinq       | 5             |
      | 3 Cinq            | 5             |
      | 2 As –Quatre      | 4             |
      | 3 Quatre          | 4             |
      | 2 As – Trois      | 3             |
      | 3 Trois           | 3             |
      | 2 as –deux        | 2             |
      | 3 deux            | 2             |
      | 2,2,1             | 2             |

  @Decharge
  Scenario: the game become in charge without advantage
    Given start a game with Nelson at <421> and <> and Yacine at <2AS-SIX>
    When Nelson won the game handle against Yacine
    Then Yacine scores should be add 10
    And Nelson's score should be subtracted from 10



  @WinGame
  Scenario: the player with advantage wins the ball he wins the game
    Given start a game with Nelson at 0 and Yacine at 10
    When Nelson won the game against Yacine
    Then the winner should be Nelson

  @WinGame
  Scenario: A player win the game with at least two points more than the opponent
    Given start a game with Nelson at 40 and Yacine at 0
    When Nelson won the point against Yacine
    Then the winner should be Nelson
