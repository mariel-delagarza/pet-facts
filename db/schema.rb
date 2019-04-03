# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190403004739) do

  create_table "pets", force: :cascade do |t|
    t.string  "name"
    t.string  "species"
    t.string  "breed"
    t.string  "microchip_number"
    t.string  "microchip_registry"
    t.string  "vet_name"
    t.string  "vet_phone"
    t.text    "vaccinations"
    t.string  "flea_treatment_type"
    t.string  "heartworm_treatment_type"
    t.string  "allergies"
    t.string  "food_brand"
    t.string  "food_serving"
    t.string  "feedings_per_day"
    t.text    "comments"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.text   "email"
    t.string "password_digest"
  end

end
