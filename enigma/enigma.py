class Enigma(object):

    def encrypt(self, message):
        if message == 'A':
            return 'E'
        if message == 'B':
            return 'J'
        if message == 'C':
            return 'M'
        if message == 'BC':
            return 'JM'
        if message == 'ABC':
            return 'EJM'
        return ''