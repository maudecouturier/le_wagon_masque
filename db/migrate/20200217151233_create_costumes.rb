class CreateCostumes < ActiveRecord::Migration[6.0]
  def change
    create_table :costumes do |t|
      t.text :description
      t.string :location
      t.integer :price
      t.string :size
      t.string :gender
      t.string :theme
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
