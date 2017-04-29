class Enigma(object):
    def __init__(self, reflector=None):
        self.reflector = reflector
        self.reflector_is_enabled = False

    def encrypt(self, message):
        encrypted_string = ''
        for letter in message:
            if letter == 'A':
                encrypted_string += 'E'
            if letter == 'B':
                encrypted_string += 'J'
            if letter == 'C':
                encrypted_string += 'M'

        return encrypted_string

    def enable_reflector(self):
        self.enable_reflector = True
