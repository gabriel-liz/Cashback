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

ActiveRecord::Schema.define(version: 2021_05_13_010334) do

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.float "ticket_value"
    t.float "cashback"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchase_itens", force: :cascade do |t|
    t.integer "number_tickets"
    t.integer "ticket_value_id", null: false
    t.integer "cashback_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cashback_id"], name: "index_purchase_itens_on_cashback_id"
    t.index ["ticket_value_id"], name: "index_purchase_itens_on_ticket_value_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.float "total_purchase"
    t.float "total_cashback"    
    t.integer "provider_id", null: false
    t.integer "tourist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["provider_id"], name: "index_purchases_on_provider_id"
    t.index ["tourist_id"], name: "index_purchases_on_tourist_id"
  end

  create_table "tourists", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.float "balance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "purchase_itens", "cashbacks"
  add_foreign_key "purchase_itens", "ticket_values"
  add_foreign_key "purchases", "providers"
  add_foreign_key "purchases", "tourists"
end
