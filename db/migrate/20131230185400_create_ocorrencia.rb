class CreateOcorrencia < ActiveRecord::Migration
  def change
    create_table :ocorrencia do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
