# app.rb
require 'sinatra'
require_relative "get_num_game_func.rb"
target_number

    get '/'do
        erb :get_name
    end

    post '/users_name' do
        name = params[:user_name].capitalize
        erb :get_number, :locals => {:name =>name}
    end