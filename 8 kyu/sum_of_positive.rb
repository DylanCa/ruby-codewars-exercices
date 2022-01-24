require 'test/unit'

# You get an array of numbers, return the sum of all of the positives ones.
# Example [1,-4,7,12] => 1 + 7 + 12 = 20
# Note: if there is nothing to sum, the sum is default to 0.

def positive_sum(arr)
  sum = 0

  arr.each do |num|
    sum += num if num.positive?
  end
  sum
end

# Tests
class TestSolution < Test::Unit::TestCase
  def test_solution
    assert_equal 15, positive_sum([1, 2, 3, 4, 5])
    assert_equal 13, positive_sum([1, -2, 3, 4, 5])
    assert_equal 9, positive_sum([-1, 2, 3, 4, -5])
    assert_equal 0, positive_sum([])
    assert_equal 0, positive_sum([-1, -2, -3, -4, -5])
  end
end

# Best Answer on Codewars

def best_answer(arr)
  arr.select { |x| x > 0 }.reduce(0, :+)
end
