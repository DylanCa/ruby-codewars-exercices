require 'test/unit'

# A hero is on his way to the castle to complete his mission.
# However, he's been told that the castle is surrounded with a couple of powerful dragons! each dragon takes 2 bullets to be defeated, our hero has no idea how many bullets he should carry..
# Assuming he's gonna grab a specific given number of bullets and move forward to fight another specific given number of dragons, will he survive?
# Return True if yes, False otherwise :)

def hero(bullets, dragons)
  (bullets / 2) >= dragons
end

# Tests
class TestSolution < Test::Unit::TestCase
  def test_solution
    assert_equal true, hero(10, 5)
    assert_equal false, hero(7, 4)
    assert_equal false, hero(4, 5)
    assert_equal true, hero(100, 40)
    assert_equal false, hero(1500, 751)
    assert_equal false, hero(0, 1)
  end
end

# Best Answer on Codewars

def best_answer(bullets, dragons)
  bullets / dragons >= 2
end
