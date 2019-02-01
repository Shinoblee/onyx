class CreateMaturationConfirms < ActiveRecord::Migration[5.2]
  def change
    create_table :maturation_confirms do |t|
      t.string :planned_maturation
      t.string :actual_maturation
      t.text :maturation_comment
      t.integer :event_id
      t.integer :part_id

      t.timestamps
    end
  end
end
