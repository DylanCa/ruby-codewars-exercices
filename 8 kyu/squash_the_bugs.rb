require 'test/unit'
#
# Simple challenge - eliminate all bugs from the supplied code so that the code runs and outputs the expected value.
# Output should be the length of the longest word, as a number.
#
# There will only be one 'longest' word.

def find_longest(string)
  spl = string.split(' ')
  longest = 0

  spl.each do |word|
    longest = word.length if word.length > longest
  end

  longest
end

# Tests
class TestSolution < Test::Unit::TestCase
  def test_find_longest
    assert_equal 7, find_longest('The quick white fox jumped around the massive dog')
    assert_equal 10, find_longest('Take me to tinseltown with you')
    assert_equal 7, find_longest('Sausage chops')
    assert_equal 6, find_longest('Wind your body and wiggle your belly')
    assert_equal 7, find_longest('Lets all go on holiday')
  end
end
