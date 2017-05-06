Feature: User is able to encrypt a message with an actual enigma setting

@todo
Scenario: User encrypts message HELLO WORLD
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And leftmost rotor "BDFHJLCPRTXVZNYEIWGAKMUSQO"
And center rotor "AJDKSIRUXBLHWTMCQGZNPYFVOE"
And right rotor "EKMFLGDQVZNTOWYHXUSPAIBRCJ"
And an enigma that uses the reflector and all rotors
When an operator encrypts "HELLOWORLD"
Then the result is "MFNCZBBFZM"

@todo
Scenario: User decrypts message MFNCZBBFZM
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And leftmost rotor "BDFHJLCPRTXVZNYEIWGAKMUSQO"
And center rotor "AJDKSIRUXBLHWTMCQGZNPYFVOE"
And right rotor "EKMFLGDQVZNTOWYHXUSPAIBRCJ"
And an enigma that uses the reflector and all rotors
When an operator encrypts "MFNCZBBFZM"
Then the result is "HELLOWORLD"
