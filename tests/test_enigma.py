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


class EnigmaTestCase(TestCase):
    def setUp(self):
        self.enigma = Enigma(reflector='ABCDEFGHIJKLMNOPQRSTUVWXYZ', rotor='ABCDEFGHIJKLMNOPQRSTUVWXYZ')

    def test_enigma_stores_reflector_as_instance_variable(self):
        enigma = Enigma(reflector='foo')
        self.assertEqual('foo', enigma.reflector)

    @patch('enigma.enigma.Enigma.reflect')
    def test_enigma_reflector_used_during_encryption_when_present(self, mock_reflect):
        self.enigma.encrypt('')
        self.assertEqual(1, mock_reflect.call_count)

    def test_enigma_stores_rotor_as_instance_variable(self):
        enigma = Enigma(rotor='foo')
        self.assertEqual('foo', enigma.rotor)

    @patch('enigma.enigma.Enigma.rotate')
    def test_enigma_rotor_used_during_encryption_when_present(self, mock_rotate):
        self.enigma.encrypt('')
        self.assertEqual(2, mock_rotate.call_count)


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


class TrivialRotorTestCase(TestCase):
    def setUp(self):
        self.enigma = Enigma(reflector='YRUHQSLDPXNGOKMIEBFZCWVJAT', rotor='ACDBEFGHIJKLMNOPQRSTUVWXYZ')

    def test_enigma_encrypts_empty_string_as_empty_string(self):
        self.assertEqual('', self.enigma.encrypt(''))

    def test_enigma_encrypts_A_as_Y(self):
        self.assertEqual('Y', self.enigma.encrypt('A'))

    def test_enigma_encrypts_AB_as_YU(self):
        self.assertEqual('YU', self.enigma.encrypt('AB'))

    def test_enigma_encrypts_ABC_as_YUH(self):
        self.assertEqual('YUH', self.enigma.encrypt('ABC'))

    def test_enigma_encrypts_ABCD_as_YUHR(self):
        self.assertEqual('YUHR', self.enigma.encrypt('ABCD'))


class TrivialRotorBackwardsTestCase(TestCase):
    def setUp(self):
        self.enigma = Enigma(reflector='YRUHQSLDPXNGOKMIEBFZCWVJAT', rotor='ACDBEFGHIJKLMNOPQRSTUVWXYZ')

    def test_enigma_encrypts_empty_string_as_empty_string(self):
        self.assertEqual('', self.enigma.encrypt(''))

    def test_enigma_encrypts_Y_as_A(self):
        self.assertEqual('A', self.enigma.encrypt('Y'))

    def test_enigma_encrypts_YR_as_AD(self):
        self.assertEqual('AD', self.enigma.encrypt('YR'))
