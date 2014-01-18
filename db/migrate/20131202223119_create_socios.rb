class CreateSocios < ActiveRecord::Migration
  def change
    create_table :socios do |t|
      t.integer :socio_id
      t.string :matricula
      t.date :filiacao
      t.date :nascimento
      t.string :nome
      t.integer :Tit_dep
      t.string :natural
      t.string :uf
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :ufcid
      t.string :telres
      t.string :telfunc
      t.string :celular
      t.string :rg
      t.string :oexp
      t.integer :cpf
      t.string :email
      t.string :conjuge
      t.datetime :nascconjuge

      t.timestamps
    end
  end
end
