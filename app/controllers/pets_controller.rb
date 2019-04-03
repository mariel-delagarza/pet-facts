class PetsController < ApplicationController

  get '/pets/index' do
    erb :'/pets/index'
  end

  get '/pets/new' do
    erb :'/pets/new'
  end

  post '/pets' do
    @pet = Pet.create(
        name: params[:name],
        species: params[:species],
        breed: params[:breed],
        microchip_number: params[:microchip_number],
        microchip_registry: params[:microchip_registry],
        vet_name: params[:vet_name],
        vet_phone: params[:vet_phone],
        vaccinations: params[:vaccinations],
        flea_treatment_type: params[:flea_treatment_type],
        heartworm_treatment_type: params[:heartworm_treatment_type],
        allergies: params[:allergies],
        food_brand: params[:food_brand],
        food_serving: params[:food_serving],
        feedings_per_day: params[:feedings_per_day],
        comments: params[:comments])
  end

  get '/pets/show' do
    erb :'/pets/show'
  end

end
