require 'test/unit'

# The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.
# Task
# Given a year, return the century it is in.

# Examples
# 1705 --> 18
# 1900 --> 19
# 1601 --> 17
# 2000 --> 20

def century(year)
  (year % 100).zero? ? year / 100 : year / 100 + 1
end

# Tests
class TestSolution < Test::Unit::TestCase
  def test_solution
    assert_equal 18, century(1705)
    assert_equal 19, century(1900)
    assert_equal 17, century(1601)
    assert_equal 20, century(2000)
    assert_equal 1, century(89)
  end
end

# Best Answer on Codewars

def best_answer(year)
  (year / 100.0).ceil
end
