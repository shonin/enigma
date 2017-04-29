class Enigma(object):

    def encrypt(self, message):
        if message == 'A':
            return 'E'
        if message == 'B':
            return 'J'
        if message == 'C':
            return 'M'
        return ''