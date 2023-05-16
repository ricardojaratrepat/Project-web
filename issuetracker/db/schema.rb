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

ActiveRecord::Schema[7.0].define(version: 2023_05_16_205533) do
  create_table "admin_users", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_admin_users_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "ticket_id", null: false
    t.text "text"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_comments_on_ticket_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "documents", force: :cascade do |t|
    t.integer "ticket_id", null: false
    t.string "type"
    t.binary "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_documents_on_ticket_id"
  end

  create_table "executive_users", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_executive_users_on_user_id"
  end

  create_table "performance_reports", force: :cascade do |t|
    t.integer "executive_user_id", null: false
    t.integer "created_tickets"
    t.integer "closed_tickets"
    t.integer "open_tickets"
    t.float "average_evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["executive_user_id"], name: "index_performance_reports_on_executive_user_id"
  end

  create_table "requesting_users", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_requesting_users_on_user_id"
  end

  create_table "solutions", force: :cascade do |t|
    t.integer "ticket_id", null: false
    t.date "date"
    t.text "feedback"
    t.boolean "selected"
    t.integer "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_solutions_on_ticket_id"
  end

  create_table "supervisor_users", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_supervisor_users_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.integer "ticket_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.index ["ticket_id"], name: "index_tags_on_ticket_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "requesting_user_id", null: false
    t.string "title"
    t.text "description"
    t.string "priority"
    t.string "state"
    t.datetime "incident_date"
    t.date "deadline"
    t.string "category"
    t.integer "executive_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["executive_user_id"], name: "index_tickets_on_executive_user_id"
    t.index ["requesting_user_id"], name: "index_tickets_on_requesting_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "lastname"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "admin_users", "users"
  add_foreign_key "comments", "tickets"
  add_foreign_key "comments", "users"
  add_foreign_key "documents", "tickets"
  add_foreign_key "executive_users", "users"
  add_foreign_key "performance_reports", "executive_users"
  add_foreign_key "requesting_users", "users"
  add_foreign_key "solutions", "tickets"
  add_foreign_key "supervisor_users", "users"
  add_foreign_key "tags", "tickets"
  add_foreign_key "tickets", "executive_users"
  add_foreign_key "tickets", "requesting_users"
end
