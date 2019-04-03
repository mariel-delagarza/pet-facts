class UsersController < ApplicationController

  get '/signup' do
    erb :'/users/create'
  end

  post '/users' do
    @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      redirect to '/pets/index'
    else
      redirect to '/users/create'
    end
    #binding.pry
  end


end
