class Enigma(object):
    ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

    def __init__(self, reflector=None):
        self.reflector = reflector

    @staticmethod
    def encrypt(message):
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
