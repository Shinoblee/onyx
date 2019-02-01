class CreateDesignConfirms < ActiveRecord::Migration[5.2]
  def change
    create_table :design_confirms do |t|
      t.string :required_design
      t.string :actual_design
      t.text :design_comment
      t.integer :event_id
      t.integer :part_id

      t.timestamps
    end
  end
end
