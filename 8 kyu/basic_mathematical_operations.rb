require 'test/unit'

# Your task is to create a function that does four basic mathematical operations.

# The function should take three arguments - operation(string/char), value1(number), value2(number).
# The function should return result of numbers after applying the chosen operation.
# Examples(Operator, value1, value2) --> output
# ('+', 4, 7) --> 11
# ('-', 15, 18) --> -3
# ('*', 5, 5) --> 25
# ('/', 49, 7) --> 7

def basic_op(operator, value1, value2)
  case operator
  when '+'
    value1 + value2
  when '-'
    value1 - value2
  when '*'
    value1 * value2
  when '/'
    value1 / value2
  end
end

# Tests
class TestSolution < Test::Unit::TestCase
  def test_solution
    assert_equal 11, basic_op('+', 4, 7)
    assert_equal(-3, basic_op('-', 15, 18))
    assert_equal 25, basic_op('*', 5, 5)
    assert_equal 7, basic_op('/', 49, 7)
  end
end
