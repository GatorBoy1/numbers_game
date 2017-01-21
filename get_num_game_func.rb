#get_num_game_function.rb



def target_number

    rand(100) + 1
    
    end


    def compare_guess(guess, target_number)
        if guess.to_i < target_number.to_i
            "Your guess was low"
        elsif guess.to_i > target_number.to_i
              "Your guess was high"
        else
            "correct"
                end #if
        
 end # compare_guess
     def guess_counter(guess_count)
            guess_count =guess_count-1
     end
