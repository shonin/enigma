Feature: Enigma with a reflector and two static rotors AND ONE MOVING ROTOR should act as a simple cypher

@todo
Scenario: User encrypts no message
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT";
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And center rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And right rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And an enigma that uses the reflector and all rotors
When an operator encrypts ""
Then the result is ""

@todo
Scenario: User encrypts message "E"
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT";
And leftmost rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And center rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And right rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And an enigma that uses the reflector and all rotors
When an operator encrypts "E"
Then the result is "Q"

@todo
Scenario: User encrypts message "D"
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT";
And leftmost rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And center rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And right rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And an enigma that uses the reflector and all rotors
When an operator encrypts "D"
Then the result is "H"
# Why wasn't it D -> B -> B -> R -> R ->R -> R ?
#  hint: D -> ? -> D -> D -> H -> H -> H -> H
#  hint2: the right rotor moved

@todo
Scenario: User encrypts message "C"
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT";
And leftmost rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And center rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And right rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And an enigma that uses the reflector and all rotors
When an operator encrypts "C"
Then the result is "Y"

@todo
Scenario: User encrypts message "CA"
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT";
And leftmost rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And center rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And right rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And an enigma that uses the reflector and all rotors
# And the enigma has debugging enabled
When an operator encrypts "CA"
Then the result is "YR"

@todo
Scenario: User encrypts message "CACD"
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT";
And leftmost rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And center rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And right rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And an enigma that uses the reflector and all rotors
# And the enigma has debugging enabled
When an operator encrypts "CACD"
Then the result is "YRUH"

@todo
Scenario: User encrypts message "AAAAA"
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT";
And leftmost rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And center rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And right rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And an enigma that uses the reflector and all rotors
When an operator encrypts "AAAAA"
Then the result is "RRZXX"

@todo
Scenario: User decrypts message RRZXX
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT";
And leftmost rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And center rotor "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
And right rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ";
And an enigma that uses the reflector and all rotors
# And the enigma has debugging enabled
When an operator encrypts "RRZXX"
Then the result is "AAAAA"