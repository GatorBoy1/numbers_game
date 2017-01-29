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
    puts target
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
                erb :sorry, :locals => {:name => name, :target => target}
                
            else
                erb :get_number, :locals => {:name => name, :rounds => rounds, :results => results, :guess => guess}
        end #if
        
    end # post
    post '/playchoice' do
             # name = params[:user_name].capitalize
              choice = params[:input_playchoice].capitalize
              reset # call here to reset options for new game.
        if choice == "Y"
           # erb:play_again, :locals => {:name => name, :rounds => rounds, :results => results, :guess => guess}
            redirect "/"
        else
            erb :thank_you, :locals => {:name => name}
        end
                
                #'/replay?user_name=' + name
     end
     get '/replay' do
        name = params[:user_name].capitalize
        erb :play_again, :locals =>{:name => name}
    end
   
    # post '/replay' do
    #     name = params[:user_name].capitalize
    #     play_again = params[:play_again]
    #     # if play_again == "n"
    #     # #     play = no
    #     #     "good bye"
    #     #  end #if
    #     end #post
    post'/replay' do
        "hello world"
     end