from unittest import TestCase
from unittest.mock import patch

from enigma import Enigma


class SingleLetterCipherTestCase(TestCase):
    def setUp(self):
        self.enigma = Enigma()

    def test_enigma_encrypts_blank_as_blank(self):
        self.assertEqual('', self.enigma.encrypt(''))

    def test_enigma_encrypts_A_as_E(self):
        self.assertEqual('E', self.enigma.encrypt('A'))

    def test_enigma_encrypts_B_as_J(self):
        self.assertEqual('J', self.enigma.encrypt('B'))

    def test_enigma_encrypts_C_as_M(self):
        self.assertEqual('M', self.enigma.encrypt('C'))


class SimpleMessageCipherTestCase(TestCase):
    def setUp(self):
        self.enigma = Enigma()

    def test_enigma_encrypts_BC_as_JM(self):
        self.assertEqual('JM', self.enigma.encrypt('BC'))

    def test_enigma_encrypts_ABC_as_EJM(self):
        self.assertEqual('EJM', self.enigma.encrypt('ABC'))


class ReflectorTestCase(TestCase):
    def setUp(self):
        self.enigma = Enigma(reflector='ABCDEFGHIJKLMNOPQRSTUVWXYZ')

    def test_enigma_stores_reflector_as_instance_variable(self):
        enigma = Enigma(reflector='foo')
        self.assertEqual('foo', enigma.reflector)

    @patch('enigma.enigma.Enigma.reflect')
    def test_enigma_reflector_used_during_encryption_when_present(self, mock_reflect):
        self.enigma.encrypt('')
        self.assertEqual(1, mock_reflect.call_count)


class ReflectorUKWBTestCase(TestCase):
    def setUp(self):
        self.enigma = Enigma(reflector='YRUHQSLDPXNGOKMIEBFZCWVJAT')

    def test_enigma_reflects_A_as_Y(self):
        self.assertEqual('Y', self.enigma.reflect('A'))

    def test_enigma_reflects_AB_as_YR(self):
        self.assertEqual('YR', self.enigma.reflect('AB'))

    def test_enigma_reflects_ABC_as_YRU(self):
        self.assertEqual('YRU', self.enigma.reflect('ABC'))


class ReflectorUKWATestCase(TestCase):
    def setUp(self):
        self.enigma = Enigma(reflector='EJMZALYXVBWFCRQUONTSPIKHGD')

    def test_enigma_reflects_A_as_E(self):
        self.assertEqual('E', self.enigma.reflect('A'))

    def test_enigma_reflects_AB_as_EJ(self):
        self.assertEqual('EJ', self.enigma.reflect('AB'))

    def test_enigma_reflects_ABC_as_EJM(self):
        self.assertEqual('EJM', self.enigma.reflect('ABC'))

    def test_enigma_reflects_alphabet_correctly(self):
        self.assertEqual('EJMZALYXVBWFCRQUONTSPIKHGD', self.enigma.reflect('ABCDEFGHIJKLMNOPQRSTUVWXYZ'))
