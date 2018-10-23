class CreateBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.string :name,    null: false
      t.integer :rent,   null: false
      t.string :address, null: false
      t.integer :age,    null: false
      t.text :notes,     null: false
      t.timestamps
    end
  end
end
