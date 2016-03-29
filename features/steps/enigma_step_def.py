from behave import *
from nose.tools import eq_

from enigma import Enigma


@given('an enigma')
def step_impl(context):
    context.enigma = Enigma()


# Apparently behave can't recognize "" as text of zero length
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
