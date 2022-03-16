Feature: Game start definition

  Scenario: Start new game definition
    Given start a new game with Nelson vs Yacine
    Then Nelson score should be at 0
    Then Yacine score should be at 0

  Scenario: Start a game with Nadal at 40 and Djokovic at 30
    Given start a game with Nelson at 40 and Yacine at 30
    Then Nelson score should be at 40
    Then Yacine score should be at 30