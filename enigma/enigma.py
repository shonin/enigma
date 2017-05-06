from string import ascii_uppercase

class Enigma(object):
    def __init__(self, reflector='EJM'):
        self.reflector = reflector
        self.reflector_is_enabled = False

    def encrypt(self, message):
        encrypted_string = ''
        for letter in message:
            encrypted_string += self.reflector[self.get_index(letter)]
        return encrypted_string

    def enable_reflector(self):
        self.enable_reflector = True

    def get_index(self, letter):
        return ascii_uppercase.index(letter)
