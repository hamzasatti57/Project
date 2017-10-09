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

ActiveRecord::Schema.define(version: 20171009085202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "icons", force: :cascade do |t|
    t.string "item_level"
    t.string "category"
    t.string "name"
    t.string "description"
    t.string "layered"
    t.string "layout"
    t.string "high_resolution"
    t.string "live_demo"
    t.string "tags"
    t.decimal "price"
    t.string "comment"
    t.boolean "licence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_icons_on_user_id"
  end

  create_table "mobapps", force: :cascade do |t|
    t.string "item_level"
    t.string "category"
    t.string "name"
    t.string "description"
    t.string "layered"
    t.string "layout"
    t.string "high_resolution"
    t.string "live_demo"
    t.string "tags"
    t.decimal "price"
    t.string "comment"
    t.boolean "licence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["user_id"], name: "index_mobapps_on_user_id"
  end

  create_table "mores", force: :cascade do |t|
    t.string "item_level"
    t.string "category"
    t.string "name"
    t.string "description"
    t.string "layered"
    t.string "layout"
    t.string "high_resolution"
    t.string "live_demo"
    t.string "tags"
    t.decimal "price"
    t.string "comment"
    t.boolean "licence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["user_id"], name: "index_mores_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.string "city"
    t.string "state"
    t.decimal "postal_code"
    t.string "country"
    t.string "modify"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "item_level"
    t.string "category"
    t.string "name"
    t.string "description"
    t.string "layered"
    t.string "layout"
    t.string "high_resolution"
    t.string "live_demo"
    t.string "tags"
    t.decimal "price"
    t.string "comment"
    t.boolean "licence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "projs", force: :cascade do |t|
    t.string "item_level"
    t.string "category"
    t.string "name"
    t.string "description"
    t.string "layered"
    t.string "layout"
    t.string "high_resolution"
    t.string "live_demo"
    t.string "tags"
    t.decimal "price"
    t.string "comment"
    t.boolean "licence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_projs_on_user_id"
  end

  create_table "scripts", force: :cascade do |t|
    t.string "item_level"
    t.string "category"
    t.string "name"
    t.string "description"
    t.string "layered"
    t.string "layout"
    t.string "high_resolution"
    t.string "live_demo"
    t.string "tags"
    t.decimal "price"
    t.string "comment"
    t.boolean "licence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_scripts_on_user_id"
  end

  create_table "textures", force: :cascade do |t|
    t.string "item_level"
    t.string "category"
    t.string "name"
    t.string "description"
    t.string "layered"
    t.string "layout"
    t.string "high_resolution"
    t.string "live_demo"
    t.string "tags"
    t.decimal "price"
    t.string "comment"
    t.boolean "licence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["user_id"], name: "index_textures_on_user_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "item_level"
    t.string "category"
    t.string "name"
    t.string "description"
    t.string "layered"
    t.string "layout"
    t.string "high_resolution"
    t.string "live_demo"
    t.string "tags"
    t.decimal "price"
    t.string "comment"
    t.boolean "licence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_themes_on_user_id"
  end

  create_table "updates", force: :cascade do |t|
    t.string "name"
    t.string "user_name"
    t.string "age"
    t.string "gender"
    t.string "company"
    t.string "location"
    t.string "phone"
    t.string "description"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_updates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "webapis", force: :cascade do |t|
    t.string "item_level"
    t.string "category"
    t.string "name"
    t.string "description"
    t.string "layered"
    t.string "layout"
    t.string "high_resolution"
    t.string "live_demo"
    t.string "tags"
    t.decimal "price"
    t.string "comment"
    t.boolean "licence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "file_file_name"
    t.string "file_content_type"
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_webapis_on_user_id"
  end

  add_foreign_key "contacts", "users"
  add_foreign_key "icons", "users"
  add_foreign_key "mobapps", "users"
  add_foreign_key "mores", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "photos", "users"
  add_foreign_key "projs", "users"
  add_foreign_key "scripts", "users"
  add_foreign_key "textures", "users"
  add_foreign_key "themes", "users"
  add_foreign_key "updates", "users"
  add_foreign_key "webapis", "users"
end
