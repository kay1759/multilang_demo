class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.integer :parent_id, 		:default => 0
      t.integer :status, :limit=>2,	:default => 1
      t.integer :ordering,		:default => 0
      t.timestamps null: false
    end
  end
end
