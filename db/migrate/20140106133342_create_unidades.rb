class CreateUnidades < ActiveRecord::Migration
  def change
    create_table :unidades do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
