require 'test/unit'

# Complete the function that accepts a string parameter, and reverses each word in the string.
# All spaces in the string should be retained.
# Examples

# "This is an example!" ==> "sihT si na !elpmaxe"
# "double  spaces"      ==> "elbuod  secaps"

def reverse_words(str)
  rev = []
  word = ''
  split = str.split('')
  split.each do |l|
    if l == ' '
      rev.append(word)
      rev.append(' ')
      word = ''
    else
      word.prepend(l)
    end
  end
  rev.append(word) unless word.nil?
  rev.join('')
end

# Tests
class TestSolution < Test::Unit::TestCase
  def test_solution
    assert_equal 'ehT kciuq nworb xof spmuj revo eht yzal .god',
                 reverse_words('The quick brown fox jumps over the lazy dog.')
    assert_equal 'elppa', reverse_words('apple')
    assert_equal 'a b c d', reverse_words('a b c d')
    assert_equal 'elbuod  decaps  sdrow', reverse_words('double  spaced  words')
  end
end

# Best Answer on Codewars

def best_answer(str)
  str.split(/(\s+)/).map(&:reverse).join
end
