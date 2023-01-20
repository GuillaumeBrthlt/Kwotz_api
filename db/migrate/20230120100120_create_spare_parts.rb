class CreateSpareParts < ActiveRecord::Migration[7.0]
  def change
    create_table :spare_parts do |t|
      t.references :project, null: false, foreign_key: true
      t.string :brand
      t.string :name
      t.string :reference
      t.integer :quantity
      t.text :details

      t.timestamps
    end
  end
end
