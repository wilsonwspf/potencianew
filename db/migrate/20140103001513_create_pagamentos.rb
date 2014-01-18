class CreatePagamentos < ActiveRecord::Migration
  def change
    create_table :pagamentos do |t|
      t.date :datapgto
      t.float :valor
      t.boolean :status
      t.references :fornecedor, index: true

      t.timestamps
    end
  end
end
