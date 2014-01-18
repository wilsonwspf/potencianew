class AddUnitIdToProdutos < ActiveRecord::Migration
  def change
    add_column :produtos, :unit_id, :integer
    add_index :produtos, :unit_id
  end
end
