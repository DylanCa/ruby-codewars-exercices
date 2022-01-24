require 'test/unit'

# Make a function that will return a greeting statement that uses an input.
# Your program should return, "Hello, <name> how are you doing today?".
# [Make sure you type the exact thing I wrote or the program may not execute properly]

def greet(string)
  "Hello, #{string} how are you doing today?"
end

# Tests
class TestSolution < Test::Unit::TestCase
  def test_greet
    assert_equal 'Hello, Shingles how are you doing today?', greet('Shingles')
    assert_equal 'Hello, Ryan how are you doing today?', greet('Ryan')
  end
end
