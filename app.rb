# app.rb
require 'sinatra'
require_relative "get_num_game_func.rb"
target = target_number
rounds = 10

    get '/'do
        erb :get_name
    end

    post '/users_name' do
        name = params[:user_name]
        redirect '/guess?user_name=' + name
    end

    get '/guess' do
        name = params[:user_name].capitalize
        erb:get_number, :locals =>{:name => name}
    end

    post '/guess' do
        name = params[:user_name].capitalize
        guess = params[:guess]
        results = compare_guess(guess, target)
        rounds = guess_counter(rounds)
        if results =="correct"
            "that is correct"
            else
                results
        end #if
    end #post

