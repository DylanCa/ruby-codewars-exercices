require 'test/unit'

# Given the triangle of consecutive odd numbers:

#              1
#           3     5
#        7     9    11
#    13    15    17    19
# 21    23    25    27    29
# ...
# Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)

# 1 -->  1
# 2 --> 3 + 5 = 8

def row_sum_odd_numbers(number)
  number**3
end

# Tests
class TestSolution < Test::Unit::TestCase
  def test_solution
    assert_equal 1, row_sum_odd_numbers(1)
    assert_equal 8, row_sum_odd_numbers(2)
    assert_equal 2197, row_sum_odd_numbers(13)
    assert_equal 6859, row_sum_odd_numbers(19)
    assert_equal 68_921, row_sum_odd_numbers(41)
  end
end

# Best Answer on Codewars

def best_answer(n)
  n**3
end
