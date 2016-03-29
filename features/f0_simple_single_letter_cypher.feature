Feature: Enigma with trivial setup should act as a simple letter cypher

Scenario: A User encrypts nothing
Given an enigma
When an operator encrypts ""
Then the result is ""

@todo
Scenario: A User encrypts letter "A"
Given an enigma
When an operator encrypts "A"
Then the result is "E"

@todo
Scenario: A User encrypts letter "B"
Given an enigma
When an operator encrypts "B"
Then the result is "J"

@todo
Scenario: A User encrypts letter "C"
Given an enigma
When an operator encrypts "C"
Then the result is "M"