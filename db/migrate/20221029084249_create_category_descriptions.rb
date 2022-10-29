class CreateCategoryDescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :category_descriptions do |t|
      t.integer :category_id, 	:default => 0
      t.integer :language_id, 	:default => 0
      t.string :name, :limit=>64, 	:default => ""
      t.text :description
    end
    add_index :category_descriptions, [:category_id, :language_id], :unique => true
  end
end
