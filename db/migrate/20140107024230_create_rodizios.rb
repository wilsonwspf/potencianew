class CreateRodizios < ActiveRecord::Migration
  def change
    create_table :rodizios do |t|
      t.date :data
      t.float :qtd
      t.float :valor

      t.timestamps
    end
  end
end
