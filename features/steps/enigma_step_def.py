from behave import *
from nose.tools import eq_

from enigma import Enigma


@given('an enigma')
def step_impl(context):
    context.enigma = Enigma()

@given('a reflector "{reflector}"')
def step_impl(context, reflector):
    context.enigma = Enigma(reflector)

@given('an enigma that uses the reflector')
def step_impl(context):
    context.enigma.enable_reflector()

@given('leftmost rotor {leftmost}')
def step_impl(context, leftmost):
    context.enigma.set_leftmost_rotot(leftmost)

@given('an enigma that uses the reflector and leftmost rotor')
def step_impl(context):
    context.enigma.enable_leftmost_rotor()

@when('an operator encrypts ""')
def step_impl(context):
    context.result = context.enigma.encrypt(message='')

@then('the result is ""')
def step_impl(context):
    eq_('', context.result)

@when('an operator encrypts "{text}"')
def step_impl(context, text):
    context.result = context.enigma.encrypt(text)


@then('the result is "{text}"')
def step_impl(context, text):
    eq_(text, context.result)
