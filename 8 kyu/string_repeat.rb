require 'test/unit'

# Write a function called repeatStr which repeats the given string string exactly n times.

def repeat_str(times, str)
  str * times
end

# Tests
class TestSolution < Test::Unit::TestCase
  def test_solution
    assert_equal '***', repeat_str(3, '*')
    assert_equal '#####', repeat_str(5, '#')
    assert_equal 'ha ha ', repeat_str(2, 'ha ')
  end
end
