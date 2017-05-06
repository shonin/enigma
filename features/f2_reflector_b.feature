Feature: Enigma with a Reflector UKW-B should act as a simple cypher

Scenario: User encrypts no message
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And an enigma that uses the reflector
When an operator encrypts ""
Then the result is ""

Scenario: User encrypts message "A"
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And an enigma that uses the reflector
# And the enigma has debugging enabled
When an operator encrypts "A"
Then the result is "Y"

Scenario: User encrypts message "AB"
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And an enigma that uses the reflector
When an operator encrypts "AB"
Then the result is "YR"

Scenario: User encrypts message "ABC"
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And an enigma that uses the reflector
When an operator encrypts "ABC"
Then the result is "YRU"

