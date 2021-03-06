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

ActiveRecord::Schema.define(version: 20160319081140) do

  create_table "diseases", force: :cascade do |t|
    t.string "name"
  end

  create_table "diseases_symptoms", id: false, force: :cascade do |t|
    t.integer "disease_id"
    t.integer "symptom_id"
  end

  add_index "diseases_symptoms", ["disease_id"], name: "index_diseases_symptoms_on_disease_id"
  add_index "diseases_symptoms", ["symptom_id"], name: "index_diseases_symptoms_on_symptom_id"

  create_table "symptoms", force: :cascade do |t|
    t.string "name"
  end

end
