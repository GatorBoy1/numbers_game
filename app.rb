# app.rb
require 'sinatra'
require_relative "get_num_game_func.rb"
target = target_number
rounds = 10
results = ""
guess = nil

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
            "#{name} your guess, #{guess} was correct"
            elsif rounds == 0
                "you have used all of your guesses. The number was #{target}."
            else
                erb :get_number, :locals =>{:name => name, :rounds => rounds, :results => results, :guess => guess}
        end #if
    end #post

