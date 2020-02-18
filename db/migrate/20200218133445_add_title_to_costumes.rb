class AddTitleToCostumes < ActiveRecord::Migration[6.0]
  def change
    add_column :costumes, :title, :string
  end
end
