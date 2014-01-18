class CreateMovimentos < ActiveRecord::Migration
  def change
    create_table :movimentos do |t|
      t.boolean :es
      t.float :qtd
      t.float :preco
      t.references :produto, index: true

      t.timestamps
    end
  end
end
