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

ActiveRecord::Schema.define(version: 20150430015851) do

  create_table "detail_sales", force: true do |t|
    t.string   "name"
    t.integer  "quantity"
    t.integer  "valor"
    t.integer  "sale_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detail_sales", ["product_id"], name: "index_detail_sales_on_product_id", using: :btree
  add_index "detail_sales", ["sale_id"], name: "index_detail_sales_on_sale_id", using: :btree

  create_table "discounts", force: true do |t|
    t.string   "name"
    t.integer  "quantity"
    t.integer  "product_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discounts", ["product_id"], name: "index_discounts_on_product_id", using: :btree
  add_index "discounts", ["user_id"], name: "index_discounts_on_user_id", using: :btree

  create_table "families", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "barcode"
    t.string   "brand"
    t.string   "name"
    t.string   "description"
    t.integer  "price"
    t.integer  "price_net"
    t.integer  "family_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["family_id"], name: "index_products_on_family_id", using: :btree

  create_table "sales", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name",                                null: false
    t.string   "lastname",                            null: false
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
