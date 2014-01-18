class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :cliente
      t.date :data
      t.text :condicao
      t.float :valor

      t.timestamps
    end
  end
end
