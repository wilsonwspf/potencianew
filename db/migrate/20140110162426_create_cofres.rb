class CreateCofres < ActiveRecord::Migration
  def change
    create_table :cofres do |t|
      t.date :data
      t.float :dineiro
      t.float :moeda
      t.float :chqvista
      t.decimal :dolares
      t.decimal :euros

      t.timestamps
    end
  end
end
