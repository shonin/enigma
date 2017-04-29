Feature: Enigma with trivial setup should act as a simple message cypher

Scenario: User encrypts message "BC"
Given an enigma
When an operator encrypts "BC"
Then the result is "JM"

Scenario: User encrypts message "ABC"
Given an enigma
When an operator encrypts "ABC"
Then the result is "EJM"