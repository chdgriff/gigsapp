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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_11_05_002835) do
=======
ActiveRecord::Schema.define(version: 2018_10_26_032843) do
>>>>>>> profileruby

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "location"
    t.float "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
<<<<<<< HEAD
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.integer "asset_file_size"
    t.datetime "asset_updated_at"
=======
>>>>>>> profileruby
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "bio"
    t.string "address"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.boolean "employee"
    t.boolean "employer"
    t.boolean "age"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
