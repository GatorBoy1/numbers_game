def target_number

    rand(100) + 1
    
    end

puts target_number

    def compare_guess(guess, target_number)
        #"Your guess was low"
        if guess < target_number
            "Your guess was low"
        elsif guess > target_number
        "Your guess was high"
        else 
            "Your guess was correct"

 end

end
