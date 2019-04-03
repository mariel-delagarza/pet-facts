class UsersController < ApplicationController

  get '/users/create' do
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

  get '/login' do
    erb :'/users/login'
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      #binding.pry
      redirect to '/pets'
    else
      redirect to '/login'
    end
  end



end
