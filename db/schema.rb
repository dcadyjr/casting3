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

ActiveRecord::Schema.define(version: 20170811150752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "image_url"
    t.string "tel_no"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "agent"
    t.boolean "union"
    t.integer "ht_feet"
    t.integer "ht_inches"
    t.integer "weight"
    t.string "eye_color"
    t.string "hair_color"
    t.string "shoe_size"
    t.string "gender"
    t.string "ethnicity"
    t.string "dob"
    t.string "suit_size"
    t.string "dress_size"
    t.string "shirt_size"
    t.integer "waist"
    t.integer "inseam"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_actors_on_email", unique: true
  end

  create_table "actors_projects", force: :cascade do |t|
    t.bigint "actor_id"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_actors_projects_on_actor_id"
    t.index ["project_id"], name: "index_actors_projects_on_project_id"
  end

  create_table "agents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_agents_on_email", unique: true
  end

  create_table "auditions", force: :cascade do |t|
    t.boolean "attended"
    t.string "time"
    t.bigint "actor_id"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_auditions_on_actor_id"
    t.index ["role_id"], name: "index_auditions_on_role_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_name"
    t.string "production_co"
    t.string "roles"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "char_name"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_roles_on_project_id"
  end

  add_foreign_key "actors_projects", "actors"
  add_foreign_key "actors_projects", "projects"
  add_foreign_key "auditions", "actors"
  add_foreign_key "auditions", "roles"
  add_foreign_key "roles", "projects"
end
