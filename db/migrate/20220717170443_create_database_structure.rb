class CreateDatabaseStructure < ActiveRecord::Migration[7.0]
  def change
    create_table "category", id: :integer, charset: "utf8", force: :cascade do |t|
      t.string "name"
    end

    create_table "product", id: :integer, charset: "utf8", force: :cascade do |t|
      t.string "name"
      t.string "url_image"
      t.float "price"
      t.integer "discount"
      t.integer "category_id"
      t.index ["category_id"], name: "product_category"
      t.index ["discount"], name: "product_discount"
      t.index ["name"], name: "product_name"
      t.index ["price"], name: "product_price"
    end

    add_foreign_key "product", "category", column: "category_id"
  end
end
