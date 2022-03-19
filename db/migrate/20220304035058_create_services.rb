class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name, null: false
      t.text :explanation, null: false
      t.integer :price_without_tax, null: false
      t.timestamps
    end
  end
end
