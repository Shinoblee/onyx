class CreateToolings < ActiveRecord::Migration[5.2]
  def change
    create_table :toolings do |t|
      t.string :deliver_to
      t.string :part_type
      t.string :part_level
      t.string :commodity
      t.string :tool_source
      t.integer :go1_go2_lt
      t.integer :go2_t1_lt
      t.integer :t1_t2_lt
      t.integer :t2_t3_lt
      t.integer :t3_t4_lt
      t.integer :t4_linetry_lt
      t.integer :raw_material_lt
      t.date :go1_1_target
      t.date :go1_1_actual
      t.date :go1_1_design_target
      t.date :go1_1_correlated
      t.date :go1_2_target
      t.date :go1_2_actual
      t.date :go2_1_actual
      t.date :go2_2_target
      t.string :go2_2_actual
      t.date :go2_2_design_target
      t.date :go2_2_correlated
      t.date :go2_3_actual
      t.string :go1_1_design_number
      t.string :go1_2_design_number
      t.string :go2_1_design_number
      t.string :go2_2_design_number
      t.string :go2_3_design_change

      t.timestamps
    end
  end
end
