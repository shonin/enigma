Feature: Using an enigma with Reflector A and a simple and static leftmost and center rotors as a simple cypher for messages

@todo
Scenario: User encrypts no message
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT";
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And center rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And an enigma that uses the reflector, and left and center rotors
When an operator encrypts ""
Then the result is ""

@todo
Scenario: User encrypts message "A"
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT";
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And center rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And an enigma that uses the reflector, and left and center rotors
When an operator encrypts "A"
Then the result is "Y"

@todo
Scenario: User encrypts message "AB" (hint: B -> C -> D -> H -> H -> H)
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT";
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And center rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And an enigma that uses the reflector, and left and center rotors
When an operator encrypts "AB"
Then the result is "YH"

@todo
Scenario: User encrypts the alphabet
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT";
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And center rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And an enigma that uses the reflector, and left and center rotors
When an operator encrypts "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
Then the result is "YHRUQSLBPXNGOKMIECFZDWVJAT"

