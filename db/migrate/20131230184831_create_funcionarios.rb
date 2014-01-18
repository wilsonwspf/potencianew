class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.date :nascimento
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :tel
      t.string :cel
      t.string :email
      t.string :rg
      t.string :cpf
      t.date :admissao
      t.text :obs

      t.timestamps
    end
  end
end
