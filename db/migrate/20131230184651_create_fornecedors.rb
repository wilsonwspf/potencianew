class CreateFornecedors < ActiveRecord::Migration
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :tel
      t.string :cel
      t.string :email
      t.string :url
      t.string :contato
      t.text :obs

      t.timestamps
    end
  end
end
