class CreateMakers < ActiveRecord::Migration[7.0]
  def change
    create_table :makers do |t|

      t.timestamps null: false
    end
  end
end
