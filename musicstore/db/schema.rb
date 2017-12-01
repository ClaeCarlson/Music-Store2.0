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

ActiveRecord::Schema.define(version: 20171130172741) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "employees", primary_key: "employee_id", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name", limit: 45
    t.string "last_name", limit: 45
    t.string "job_title", limit: 45
    t.decimal "pay", precision: 20
    t.string "phone", limit: 45
  end

  create_table "orders", primary_key: ["order_id", "users_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "order_id", null: false
    t.string "transaction_type", limit: 45
    t.datetime "date_time"
    t.bigint "users_id", null: false
    t.index ["users_id"], name: "fk_orders_users1_idx"
  end

  create_table "orders_has_products", primary_key: ["orders_order_id", "orders_users_id", "products_product_id"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "orders_order_id", null: false
    t.bigint "orders_users_id", null: false
    t.integer "products_product_id", null: false
    t.index ["orders_order_id", "orders_users_id"], name: "fk_orders_has_products_orders1_idx"
    t.index ["products_product_id"], name: "fk_orders_has_products_products1_idx"
  end

  create_table "products", primary_key: "product_id", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "product_type", limit: 45
    t.string "brand", limit: 45
    t.decimal "price", precision: 20
    t.decimal "stock", precision: 20
  end

  create_table "schedules", primary_key: "schedule_slot", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "shift"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "orders", "users", column: "users_id", name: "fk_orders_users1"
  add_foreign_key "orders_has_products", "orders", column: "orders_order_id", primary_key: "order_id", name: "fk_orders_has_products_orders1"
  add_foreign_key "orders_has_products", "orders", column: "orders_users_id", primary_key: "users_id", name: "fk_orders_has_products_orders1"
  add_foreign_key "orders_has_products", "products", column: "products_product_id", primary_key: "product_id", name: "fk_orders_has_products_products1"
end
