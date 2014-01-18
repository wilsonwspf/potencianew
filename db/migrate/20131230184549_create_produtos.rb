class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.integer :unidade
      t.float :estfixo
      t.float :estinicial
      t.float :compra
      t.float :preco

      t.timestamps
    end
  end
end
