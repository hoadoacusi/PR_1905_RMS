ActiveRecord::Schema.define(version: 2019_10_21_110021) do

  create_table "bill_details", force: :cascade do |t|
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cashflows", force: :cascade do |t|
    t.decimal "bill_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dish_details", force: :cascade do |t|
    t.integer "score"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.integer "category"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.decimal "quantity"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "table_number"
    t.integer "guest_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.float "hour_worked"
    t.decimal "pay_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "utilities", force: :cascade do |t|
    t.datetime "time"
    t.decimal "water"
    t.decimal "eletricity"
    t.decimal "rent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
