class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :part_number
      t.string :part_name
      t.string :process_1
      t.string :process_2
      t.string :process_3
      t.boolean :color
      t.integer :makerlayout_id

      t.timestamps
    end
  end
end
