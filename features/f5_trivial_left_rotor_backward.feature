Feature: Enigma with a reflector and a static rotor should act as a 'backward' 2 transition cypher

  # Fair warning: this is where most people start to find this difficult. Note that using the rotor backwards is
  #  NOT the same as using it forward. More to the point, it's exactly opposite.
  #   ie If rotor.forward_encrypt('A') -> 'B', then rotor.backward_encrypt('A') -> ? =/= 'B'
  #         BUT rotor.backward_encrypt('B') -> 'A'

@todo
Scenario: User encrypts message "Y" (hint: Y -> A -> A)
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ"
And an enigma that uses the reflector and leftmost rotor
When an operator encrypts "Y"
Then the result is "A"

@todo
Scenario: User encrypts message "YR" (hint: R -> B -> D)
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ"
And an enigma that uses the reflector and leftmost rotor
When an operator encrypts "YR"
Then the result is "AD"

@todo
Scenario: User encrypts message "YRU" (hint: U -> C -> B)
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ"
And an enigma that uses the reflector and leftmost rotor
When an operator encrypts "YRU"
Then the result is "ADB"

@todo
Scenario: User encrypts message "YRUH" (hint: H -> D -> C)
Given a reflector "YRUHQSLDPXNGOKMIEBFZCWVJAT"
And leftmost rotor "ACDBEFGHIJKLMNOPQRSTUVWXYZ"
And an enigma that uses the reflector and leftmost rotor
When an operator encrypts "YRUH"
Then the result is "ADBC"
