# app.rb
require 'sinatra'
require_relative "get_num_game_func.rb"
target = target_number 
rounds = 10
results = ""
guess = nil

    get '/'do
        target = target_number
        rounds = 10
        results = ""
        guess = nil
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
            name = params[:user_name]
            guess = params[:guess]
            erb :correct_guess, :locals =>{ :name => name,  :guess => guess}
            elsif rounds == 0
                redirect '/sorry'


            else
                erb :get_number, :locals => {:name => name, :rounds => rounds, :results => results, :guess => guess}
        end #if
        
    end # post

    get '/sorry' do
        name = params[:user_name]
        erb :sorry, :locals => {:name => name, :target => target}
    end

    post '/continue' do
        redirect '/'
       # erb :yo
    end

    post '/playchoice' do
        
              choice = params[:input_playchoice].capitalize

        if choice == "Y"
            name = params[:user_name]
            redirect '/'
        else
            erb :thank_you, :locals => {:name => name}
        end
                
     end