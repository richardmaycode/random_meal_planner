# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_12_25_002226) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "creators", force: :cascade do |t|
    t.string "username", limit: 75
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_creators_on_username", unique: true
  end

  create_table "creators_instances", force: :cascade do |t|
    t.bigint "creator_id", null: false
    t.bigint "instance_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_creators_instances_on_creator_id"
    t.index ["instance_id"], name: "index_creators_instances_on_instance_id"
  end

  create_table "instances", force: :cascade do |t|
    t.integer "number_of_segments", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string "name", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_meals_on_name", unique: true
  end

  create_table "meals_recipes", force: :cascade do |t|
    t.bigint "meal_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_meals_recipes_on_meal_id"
    t.index ["recipe_id"], name: "index_meals_recipes_on_recipe_id"
  end

  create_table "meals_sections", force: :cascade do |t|
    t.bigint "meal_id", null: false
    t.bigint "section_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_meals_sections_on_meal_id"
    t.index ["section_id"], name: "index_meals_sections_on_section_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name", limit: 75
    t.bigint "creator_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_recipes_on_creator_id"
    t.index ["name"], name: "index_recipes_on_name", unique: true
  end

  create_table "sections", force: :cascade do |t|
    t.boolean "skip", default: false
    t.bigint "instance_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instance_id"], name: "index_sections_on_instance_id"
  end

  create_table "segments", force: :cascade do |t|
    t.integer "index"
    t.bigint "plan_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_segments_on_plan_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "name", limit: 75
    t.bigint "creator_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_sources_on_creator_id"
  end

  add_foreign_key "creators_instances", "creators"
  add_foreign_key "creators_instances", "instances"
  add_foreign_key "meals_recipes", "meals"
  add_foreign_key "meals_recipes", "recipes"
  add_foreign_key "meals_sections", "meals"
  add_foreign_key "meals_sections", "sections"
  add_foreign_key "recipes", "creators"
  add_foreign_key "sections", "instances"
  add_foreign_key "segments", "plans"
  add_foreign_key "sources", "creators"
end
