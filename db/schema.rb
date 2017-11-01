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

ActiveRecord::Schema.define(version: 20171101040840) do

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boss_departaments", force: :cascade do |t|
    t.integer "idBoss"
    t.integer "idDepartament"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departaments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string "perspective"
    t.string "description"
    t.string "gIndicator"
    t.string "sIndicator"
    t.string "formula"
    t.string "unit"
    t.integer "weight"
    t.integer "type"
    t.string "measure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periods", force: :cascade do |t|
    t.integer "number"
    t.date "expiration"
    t.integer "proposed"
    t.integer "reached"
    t.string "compromise"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_has_goals", force: :cascade do |t|
    t.integer "idUser"
    t.integer "idGoal"
    t.integer "idPeriod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "document"
    t.integer "idRol"
    t.integer "idPosition"
    t.integer "idDepartament"
    t.integer "idArea"
    t.integer "idBoss"
    t.integer "step"
    t.string "password_hash"
    t.string "password_salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
