from unittest import TestCase
from unittest.mock import patch

from enigma import Enigma

# Up to you if you want to write these tests
class SingleLetterCipherTestCase(TestCase):
    def setUp(self):
        self.enigma = Enigma()

    def test_enigma_encrypts_blank_as_blank(self):
        self.assertEqual('', self.enigma.encrypt(''))


class SimpleMessageCipherTestCase(TestCase):
    def setUp(self):
        self.enigma = Enigma()
