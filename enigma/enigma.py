from string import ascii_uppercase

class Enigma(object):
    def __init__(self, reflector='EJM'):
        self.reflector = reflector
        self.reflector_is_enabled = False
        self.leftmost_rotor = None
        self.leftmost_rotor_is_enabled = False

    def encrypt(self, message):
        encrypted_string = ''
        for letter in message:
            encrypted_string += self.reflector[self.get_index(letter)]
        return encrypted_string

    def get_index(self, letter):
        return ascii_uppercase.index(letter)

    def set_leftmost_rotot(self, leftmost):
        self.leftmost_rotor = leftmost

    def enable_reflector(self):
        """not used, but the tests ask for it"""
        self.enable_reflector = True

    def enable_leftmost_rotor(self):
        self.leftmost_rotor_is_enabled = True
