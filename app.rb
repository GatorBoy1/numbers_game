# app.rb
require 'sinatra'
require_relative "get_num_game_func.rb"

    get '/'do
        erb :get_name
    end

    post '/users_name' do
        name = params[:user_name]
    end