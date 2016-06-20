class CreateMakerDescriptions < ActiveRecord::Migration
  def change
    create_table :maker_descriptions do |t|
      t.integer :maker_id,		:default => 0
      t.integer :language_id,		:default => 0
      t.string :name, :limit=>64,	:default => ""
    end
    add_index :maker_descriptions, [:maker_id, :language_id], :unique => true
  end
end
