class AddCardIdToRodizios < ActiveRecord::Migration
  def change
    add_column :rodizios, :card_id, :integer
    add_index :rodizios, :card_id
  end
end
