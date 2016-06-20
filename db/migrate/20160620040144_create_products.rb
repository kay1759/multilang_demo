class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_code, :limit=>32, 	:default => ""
      t.integer :maker_id, 			:default => 0
      t.integer :category_id,			:default => 0
      t.integer :status, :limit=>2,		:default => 1
      t.integer :ordering,			:default => 0
      t.float :net_amount,			:default => 0
      t.string :net_unit, :limit=>32,		:default => ""
      t.float :weight, 			:default => 0
      t.string :size,	:default => ""
      t.decimal :price, :precision => 15, :scale => 4, :default => 0.0
      t.integer :quantity, 			:default => 0
      t.timestamps null: false
    end
  end
end
