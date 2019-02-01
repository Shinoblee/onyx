class CreateCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :costs do |t|
      t.float :event_cost
      t.integer :event_id
      t.integer :part_id

      t.timestamps
    end
  end
end
