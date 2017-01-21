#game_get_num.rb
require_relative "get_num_game_func.rb"
puts "I have a number between 1 and 100, can you guess it in less than 10 tries"

target = 0
guess_count = 10
this_turn = ""
continue = true
guess_track = 0
target =target_number.to_i
until continue ==false ||guess_count == 0
    #puts "target number is #{target}"
    puts "You have #{guess_count} guesses left, take you guess:"
    guess = gets.chomp
    this_turn = compare_guess(guess, target)
        if this_turn == "Your guess was correct"
            continue = false
            else
                puts this_turn
        end # if
        guess_track = guess_counter(guess_count)
        guess_count = guess_track
    end # until loop
    guesses_remaining = 10 - guess_count
    if continue == false
        puts "#{this_turn}, #{target} was correct. You guessed it in #{guesses_remaining}, tries!"
               

    else
        puts "#{guesses_remaining}, guesses left. The number was #{target} !"
    end #if