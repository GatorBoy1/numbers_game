# app.rb
require 'sinatra'
require_relative "get_num_game_func.rb"
target = target_number
rounds = 10
results = ""
guess = nil

def reset
    target = target_number
    rounds = 10
    results = ""
    guess = nil
end #reset

def play_again
    name = params[:user_name]
    guess = params[:guess]
    erb :play_again, :locals =>{ :name => name,  :guess => guess}
    # post '/play_again' do

    #    if play_again == "Y"
    #     reset
    #     play_again = params[:play_again] 
    #     name = params[:name]
           
    #        target = target_number
    #        erb:get_number, :locals =>{:name => name, :rounds => rounds, :results => results, :guess => guess}
    #     else
    #         "Good Bye"
    #     end #if
    # end # post
end # play again
    puts target
    get '/'do
        erb :get_name
    end

    post '/users_name' do
        name = params[:user_name]
        redirect '/guess?user_name=' + name
    end

    get '/guess' do
        name = params[:user_name].capitalize
        erb:get_number, :locals =>{:name => name, :rounds => rounds, :results => results, :guess => guess}
    end

    post '/guess' do
        name = params[:user_name].capitalize
        guess = params[:guess]
        results = compare_guess(guess, target)
        rounds = guess_counter(rounds)
        if results =="correct"
            # play_again = params[:play_again] 
            name = params[:name]            
            play_again
            elsif rounds == 0
                "you have used all of your guesses. The number was #{target}."
            else
                erb :get_number, :locals => {:name => name, :rounds => rounds, :results => results, :guess => guess}
        end #if
        
    end 