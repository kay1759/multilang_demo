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

ActiveRecord::Schema[7.0].define(version: 2022_10_29_084342) do
  create_table "categories", force: :cascade do |t|
    t.integer "parent_id", default: 0
    t.integer "status", limit: 2, default: 1
    t.integer "ordering", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_descriptions", force: :cascade do |t|
    t.integer "category_id", default: 0
    t.integer "language_id", default: 0
    t.string "name", limit: 64, default: ""
    t.text "description"
    t.index ["category_id", "language_id"], name: "index_category_descriptions_on_category_id_and_language_id", unique: true
  end

  create_table "languages", force: :cascade do |t|
    t.string "name", limit: 32, default: ""
    t.string "locale", limit: 5, default: ""
    t.boolean "isdefault", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maker_descriptions", force: :cascade do |t|
    t.integer "maker_id", default: 0
    t.integer "language_id", default: 0
    t.string "name", limit: 64, default: ""
    t.index ["maker_id", "language_id"], name: "index_maker_descriptions_on_maker_id_and_language_id", unique: true
  end

  create_table "makers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_descriptions", force: :cascade do |t|
    t.integer "product_id", default: 0
    t.integer "language_id", default: 0
    t.string "name", limit: 64, default: ""
    t.string "meaning", default: ""
    t.text "description"
    t.string "color", default: ""
    t.string "material", default: ""
    t.index ["product_id", "language_id"], name: "index_product_descriptions_on_product_id_and_language_id", unique: true
  end

  create_table "products", force: :cascade do |t|
    t.string "product_code", limit: 32, default: ""
    t.integer "maker_id", default: 0
    t.integer "category_id", default: 0
    t.integer "status", limit: 2, default: 1
    t.integer "ordering", default: 0
    t.float "net_amount", default: 0.0
    t.string "net_unit", limit: 32, default: ""
    t.float "weight", default: 0.0
    t.string "size", default: ""
    t.decimal "price", precision: 15, scale: 4, default: "0.0"
    t.integer "quantity", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
