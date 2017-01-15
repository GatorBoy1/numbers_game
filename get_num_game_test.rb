require "minitest/autorun"
require_relative "get_num_game_func.rb"

 class TestMinedMindsFunction <Minitest::Test
  
   def test_if_randomizer_yields_number
        
        assert_includes(1..100,target_number)

	end

end



#def test_fill_in_values
 #   assert_equal 2, 1 + 1
 # end
#end