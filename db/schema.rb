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

ActiveRecord::Schema.define(version: 20170419161439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercise_logs", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "date",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_exercise_logs_on_user_id", using: :btree
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name",           null: false
    t.string   "description",    null: false
    t.string   "muscles_worked",              array: true
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "food_logs", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "date",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_food_logs_on_user_id", using: :btree
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer  "recipe_id"
    t.string   "name",          null: false
    t.string   "description",   null: false
    t.integer  "calories",      null: false
    t.integer  "fat",           null: false
    t.integer  "saturated_fat"
    t.integer  "trans_fat"
    t.integer  "cholesterol"
    t.integer  "sodium"
    t.integer  "carbohydrates", null: false
    t.integer  "sugars"
    t.integer  "dietary_fiber"
    t.integer  "protein",       null: false
    t.integer  "vitamin_a"
    t.integer  "vitamin_c"
    t.integer  "calcium"
    t.integer  "iron"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id", using: :btree
  end

  create_table "lift_sets", force: :cascade do |t|
    t.integer  "workout_id"
    t.integer  "reps",       null: false
    t.string   "exercise",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workout_id"], name: "index_lift_sets_on_workout_id", using: :btree
  end

  create_table "meals", force: :cascade do |t|
    t.integer  "food_log_id"
    t.string   "type",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["food_log_id"], name: "index_meals_on_food_log_id", using: :btree
  end

  create_table "recipes", force: :cascade do |t|
    t.integer  "meal_id"
    t.string   "name",          null: false
    t.string   "description",   null: false
    t.string   "attribution"
    t.string   "steps",                      array: true
    t.integer  "calories",      null: false
    t.integer  "fat",           null: false
    t.integer  "saturated_fat"
    t.integer  "trans_fat"
    t.integer  "cholesterol"
    t.integer  "sodium"
    t.integer  "carbohydrates", null: false
    t.integer  "sugars"
    t.integer  "dietary_fiber"
    t.integer  "protein",       null: false
    t.integer  "vitamin_a"
    t.integer  "vitamin_c"
    t.integer  "calcium"
    t.integer  "iron"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["meal_id"], name: "index_recipes_on_meal_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "bio"
    t.datetime "dob"
    t.string   "gender"
    t.string   "height"
    t.integer  "starting_weight"
    t.float    "body_fat"
    t.string   "activity_level"
    t.string   "program_weight",                                   array: true
    t.string   "program_type"
    t.integer  "goal_weight"
    t.float    "goal_body_fat"
    t.integer  "program_length"
    t.string   "goals",                                            array: true
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "workouts", force: :cascade do |t|
    t.integer  "exercise_log_id"
    t.string   "name",            null: false
    t.string   "description",     null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["exercise_log_id"], name: "index_workouts_on_exercise_log_id", using: :btree
  end

end
