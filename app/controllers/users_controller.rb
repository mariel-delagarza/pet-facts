class UsersController < ApplicationController

  get '/users/create' do
    #erb :'/users/create'
    erb :'/users/create'
  end

  post '/users/create' do
    @user = User.create(username: params[:username], email: params[:email], password: params[:password])
    @user.save
    erb :'/pets/index'
    #binding.pry
  end

end
