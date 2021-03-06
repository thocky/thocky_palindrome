require "test_helper"

class ThockyPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ThockyPalindrome::VERSION
  end
  
  def test_non_palindrome
    refute "apple".palindrome? # refute is an alias for assert !
  end
  
  def test_simple_palindrome
    assert "Reconocer".palindrome?
  end
  
  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end
  
  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end
  
  def test_integer_non_palindrome
    refute 12345.palindrome?
  end
  
  def test_integer_palindrome
    assert 12321.palindrome?
  end
  
  def test_spaces_non_palindrome
    refute "   ".palindrome?
  end
end
