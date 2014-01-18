class CreateVddesserts < ActiveRecord::Migration
  def change
    create_table :vddesserts do |t|
      t.date :data
      t.integer :dessert_id
      t.boolean :almoco
      t.integer :qtd

      t.timestamps
    end
  end
end
