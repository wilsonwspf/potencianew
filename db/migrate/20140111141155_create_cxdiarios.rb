class CreateCxdiarios < ActiveRecord::Migration
  def change
    create_table :cxdiarios do |t|
      t.date :data
      t.boolean :almoco
      t.float :qtdrodizio
      t.float :dinheiro
      t.float :visaC
      t.float :visaD
      t.float :masterC
      t.float :masterD
      t.float :redeshop
      t.float :amex
      t.float :total
      t.float :media
      t.float :despesas
      t.float :descontos
      t.float :sobra
      t.float :falta
      t.float :caixinha
      t.float :cofre

      t.timestamps
    end
  end
end
