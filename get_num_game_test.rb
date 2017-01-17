# get_num_game_test.rb
require "minitest/autorun"
require_relative "get_num_game_func.rb"

 class TestNumberGameFunction <Minitest::Test
  
   def test_if_randomizer_yields_number
        
        assert_includes(1..100,target_number)
      end

    def test_guess_was_low
        target_number=20
        guess=15
        assert_equal("Your guess was low", compare_guess(guess, target_number))

	end

def test_guess_was_high
        target_number=20
        guess=25
        assert_equal("Your guess was high", compare_guess(guess, target_number))

	end

def test_guess_was_correct
        target_number=20
        guess=20
        assert_equal("correct", compare_guess(guess, target_number))

	end
def test_guess_count_return_8
        guess_count = 9
        assert_equal(8,guess_counter(guess_count))
end

def test_guess_count_return_35
        guess_count = 36
        assert_equal(35,guess_counter(guess_count))
end


end