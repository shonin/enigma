class Enigma(object):
    ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

    def __init__(self, reflector=None, rotor=None):
        self.reflector = reflector

        if not rotor:
            rotor = []
        self.rotor = rotor if type(rotor) is list else [rotor]

    def encrypt(self, message):
        if self.rotor:
            message = self.rotate(message)

        if self.reflector:
            message = self.reflect(message)

        if self.rotor:
            message = self.rotate(message, backward=True)

        if self.rotor or self.reflector:
            return message

        translation = {
            '': '',
            'A': 'E',
            'B': 'J',
            'C': 'M',
        }

        encrypted_message = ''

        for char in message:
            if char in translation:
                encrypted_message += translation.get(char)
            else:
                raise RuntimeError('Invalid character \'{}\' found in message'.format(char))

        return encrypted_message

    def reflect(self, message):
        reflection = str.maketrans(self.ALPHABET, self.reflector)
        return message.translate(reflection)

    def rotate(self, message, backward=False):
        for rotor in self.rotor:
            if backward:
                rotation = str.maketrans(rotor, self.ALPHABET)
            else:
                rotation = str.maketrans(self.ALPHABET, rotor)
            message = message.translate(rotation)
        return message
