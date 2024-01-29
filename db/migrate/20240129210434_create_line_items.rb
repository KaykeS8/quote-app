class CreateLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :line_items do |t|
      t.references :line_item_date, null: false, foreign_key: true
      t.string :name, null: false
      t.text :description
      t.integer :quntity, null: false
      t.decimal :unit_price, precision: 10, scale: 2, null: false

      t.timestamps
    end
  end
end