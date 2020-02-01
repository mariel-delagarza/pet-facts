class CreatePetsTable < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :breed
      t.string :microchip_number
      t.string :microchip_registry
      t.string :vet_name
      t.string :vet_phone
      t.text :vaccinations
      t.string :flea_treatment_type
      t.string :heartworm_treatment_type
      t.string :allergies
      t.string :food_brand
      t.string :food_serving
      t.string :feedings_per_day
      t.text :comments
      t.integer :user_id
    end
  end
end
