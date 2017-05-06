Feature: Enigma with a Reflector UKW-A should act as a simple cypher

@todo
Scenario: User encrypts message "A"
Given a reflector "EJMZALYXVBWFCRQUONTSPIKHGD"
And an enigma that uses the reflector
When an operator encrypts "A"
Then the result is "E"

@todo
Scenario: User encrypts message "AB"
Given a reflector "EJMZALYXVBWFCRQUONTSPIKHGD"
And an enigma that uses the reflector
When an operator encrypts "AB"
Then the result is "EJ"

@todo
Scenario: User encrypts message "ABC"
Given a reflector "EJMZALYXVBWFCRQUONTSPIKHGD"
And an enigma that uses the reflector
When an operator encrypts "ABC"
Then the result is "EJM"

@todo
Scenario: Using an enigma with Reflector A as a simple cypher for the alphabet
Given a reflector "EJMZALYXVBWFCRQUONTSPIKHGD"
And an enigma that uses the reflector
When an operator encrypts "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
Then the result is "EJMZALYXVBWFCRQUONTSPIKHGD"
