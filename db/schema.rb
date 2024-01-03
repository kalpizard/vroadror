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

ActiveRecord::Schema[7.1].define(version: 2024_01_03_011155) do
  create_table "advances", force: :cascade do |t|
    t.datetime "death_line"
    t.float "current_progress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "congratulations", force: :cascade do |t|
    t.string "congratulation_descript"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_congratulations_on_user_id"
  end

  create_table "difficulties", force: :cascade do |t|
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string "goal_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "advance_id", null: false
    t.index ["advance_id"], name: "index_goals_on_advance_id"
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "notifications", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "congratulation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["congratulation_id"], name: "index_notifications_on_congratulation_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "preconfigurations", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "task_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_preconfigurations_on_category_id"
    t.index ["task_id"], name: "index_preconfigurations_on_task_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "puntuation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "subtasks", force: :cascade do |t|
    t.integer "subtask_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "task_name"
    t.string "task_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "goal_id", null: false
    t.bigint "difficulty_id", null: false
    t.index ["difficulty_id"], name: "index_tasks_on_difficulty_id"
    t.index ["goal_id"], name: "index_tasks_on_goal_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "tokens", force: :cascade do |t|
    t.string "token"
    t.datetime "expiration_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_tokens_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "user_email"
    t.string "user_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "congratulations", "users"
  add_foreign_key "goals", "advances"
  add_foreign_key "goals", "users"
  add_foreign_key "notifications", "congratulations"
  add_foreign_key "notifications", "users"
  add_foreign_key "preconfigurations", "categories"
  add_foreign_key "preconfigurations", "tasks"
  add_foreign_key "ratings", "users"
  add_foreign_key "tasks", "difficulties"
  add_foreign_key "tasks", "goals"
  add_foreign_key "tasks", "users"
  add_foreign_key "tokens", "users"
end
