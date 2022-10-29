class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :languages do |t|
      t.string :name, :limit=>32,	:default => ""
      t.string :locale, :limit=>5,	:default => "", 	:unique => true
      t.boolean :isdefault,		:default => false
      t.timestamps null: false
    end
  end
end
