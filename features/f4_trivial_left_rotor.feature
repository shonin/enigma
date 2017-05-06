Feature: Enigma with a reflector and a static rotor should act as a 'forward' 2 transition cypher

@todo
Scenario: User encrypts no message
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ"
And an enigma that uses the reflector and leftmost rotor
When an operator encrypts ""
Then the result is ""

@todo
Scenario: User encrypts message "A" (hint: A -> A -> Y)
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ"
And an enigma that uses the reflector and leftmost rotor
When an operator encrypts "A"
Then the result is "Y"

@todo
Scenario: User encrypts message "AB" (hint: B -> C -> U)
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ"
And an enigma that uses the reflector and leftmost rotor
When an operator encrypts "AB"
Then the result is "YU"

@todo
Scenario: User encrypts message "ABC" (hint: C -> D -> H)
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ"
And an enigma that uses the reflector and leftmost rotor
When an operator encrypts "ABC"
Then the result is "YUH"

@todo
Scenario: User encrypts message "ABCD" (hint: D -> B -> R)
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ"
And an enigma that uses the reflector and leftmost rotor
When an operator encrypts "ABCD"
Then the result is "YUHR"
