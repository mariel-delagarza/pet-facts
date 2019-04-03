class PetsController < ApplicationController

  get '/pets/index' do
    erb :'/pets/index'
  end

  get '/pets/new' do
    erb :'/pets/new'
  end

  get '/pets/show' do
    erb :'/pets/show'
  end

end
