require "minitest/autorun"
require_relative "get_num_game_func.rb"

 class TestNumberGameFunction <Minitest::Test
  
   def test_if_randomizer_yields_number
        
        assert_includes(1..100,target_number)
      end

    def test_guess_true_or_false
        target_number=20
        guess=15
        assert_equal("Your guess was low", compare_guess(guess, target_number))

	end

def test_guess_true_or_false
        target_number=20
        guess=25
        assert_equal("Your guess was high", compare_guess(guess, target_number))

	end

def test_guess_true_or_false
        target_number=20
        guess=20
        assert_equal("Your guess was correct", compare_guess(guess, target_number))

	end




end


