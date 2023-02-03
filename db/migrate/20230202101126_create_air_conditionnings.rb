class CreateAirConditionnings < ActiveRecord::Migration[7.0]
  def change
    create_table :air_conditionnings do |t|
      t.references :project, null: false, foreign_key: true
      t.string :name
      t.integer :type, default: 0
      t.integer :outnbr
      t.integer :current_type, default: 0
      t.integer :surface
      t.integer :height
      t.integer :volume
      t.string :inside_unit_type
      t.text :accesories
      t.text :comment

      t.timestamps
    end
  end
end
