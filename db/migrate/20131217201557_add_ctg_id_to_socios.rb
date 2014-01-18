class AddCtgIdToSocios < ActiveRecord::Migration
  def change
    add_column :socios, :ctg_id, :integer
    add_index :socios, :ctg_id
  end
end
