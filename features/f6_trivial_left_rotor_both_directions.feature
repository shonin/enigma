Feature: Enigma with a reflector and a more complex static rotor should act as a 3 transition cypher

@todo
Scenario: User encrypts message (hint: G->Q->E->Z)
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And leftmost rotor "ACDBFZQHIJKLMNOPGRSTUVWXYE"
And an enigma that uses the reflector and leftmost rotor
When an operator encrypts "G"
Then the result is "Z"

@todo
Scenario: User encrypts the alphabet
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And leftmost rotor "ACDBFZQHIJKLMNOPGRSTUVWXYE"
And an enigma that uses the reflector and leftmost rotor
When an operator encrypts "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
Then the result is "YUHRSTZCPXNQOKMILDEFBWVJAG"
