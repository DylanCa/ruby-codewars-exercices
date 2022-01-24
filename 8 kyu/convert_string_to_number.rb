require 'test/unit'

# Description

# We need a function that can transform a string into a number. What ways of achieving this do you know?

# NOTE: Don't worry, all inputs will be strings, and every string is a perfectly valid representation of an integral number.

# Examples

# "1234" --> 1234
# "605"  --> 605
# "1405" --> 1405
# "-7" --> -7

def string_to_number(string)
  string.to_i
end

# Tests
class TestSolution < Test::Unit::TestCase
  def test_string_to_number
    assert_equal 1234, string_to_number('1234')
    assert_equal 605, string_to_number('605')
    assert_equal 1405, string_to_number('1405')
    assert_equal(-7, string_to_number('-7'))
  end
end
