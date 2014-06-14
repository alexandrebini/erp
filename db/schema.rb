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

ActiveRecord::Schema.define(version: 20140614155343) do

  create_table "addresses", force: true do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "street"
    t.string   "number"
    t.integer  "postal_code"
    t.integer  "city_id"
    t.string   "complement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["addressable_id", "addressable_type"], name: "index_addresses_on_addressable_id_and_addressable_type"
  add_index "addresses", ["city_id"], name: "index_addresses_on_city_id"

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id"

  create_table "contacts", force: true do |t|
    t.integer  "contactable_id"
    t.string   "contactable_type"
    t.string   "symbol"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["contactable_id", "contactable_type"], name: "index_contacts_on_contactable_id_and_contactable_type"

  create_table "products", force: true do |t|
    t.string   "barcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchase_items", force: true do |t|
    t.integer  "purchase_id"
    t.integer  "product_id"
    t.integer  "price"
    t.integer  "quantity"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchase_items", ["product_id"], name: "index_purchase_items_on_product_id"
  add_index "purchase_items", ["purchase_id"], name: "index_purchase_items_on_purchase_id"

  create_table "purchases", force: true do |t|
    t.integer  "supplier_id"
    t.integer  "discount",    default: 0
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchases", ["supplier_id"], name: "index_purchases_on_supplier_id"

  create_table "sale_items", force: true do |t|
    t.integer  "sale_id"
    t.integer  "product_id"
    t.integer  "price"
    t.integer  "quantity"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sale_items", ["product_id"], name: "index_sale_items_on_product_id"
  add_index "sale_items", ["sale_id"], name: "index_sale_items_on_sale_id"

  create_table "sales", force: true do |t|
    t.integer  "customer_id"
    t.integer  "vendor_id"
    t.integer  "discount",    default: 0
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales", ["customer_id"], name: "index_sales_on_customer_id"
  add_index "sales", ["vendor_id"], name: "index_sales_on_vendor_id"

  create_table "states", force: true do |t|
    t.string   "symbol"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "third_parties", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
