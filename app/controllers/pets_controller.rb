class PetsController < ApplicationController

  get '/pets' do
    erb :'/pets/index'
  end

  get '/pets/new' do
    erb :'/pets/new'
  end

  post '/pets' do
    @pet = current_user.pets.create(
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
    #  binding.pry
    if @pet.save
      redirect to '/pets/#{@pet.id}'
    else
      redirect to '/pets/new'
    end
  end

  get '/pets/:id' do
    @pet = Pet.find_by_id(params[:id])
    erb :'/pets/show'
  end

end
