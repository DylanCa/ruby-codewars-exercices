require 'test/unit'
# Description:
#
# Make a simple function called greet that returns the most-famous "hello world!".
#

def greet
  'hello, world!'
end

# Tests
class TestSolution < Test::Unit::TestCase
  def test_greet
    assert_equal 'hello, world!', greet
  end
end
