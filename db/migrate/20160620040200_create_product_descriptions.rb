class CreateProductDescriptions < ActiveRecord::Migration
  def change
    create_table :product_descriptions do |t|
      t.integer :product_id,		:default => 0
      t.integer :language_id,		:default => 0
      t.string :name, :limit=>64,	:default => ""
      t.string :meaning, 		:default => ""
      t.text :description
      t.string :color, 		:default => ""
      t.string :material, 	:default => ""
    end
    add_index :product_descriptions, [:product_id, :language_id], :unique => true
  end
end
