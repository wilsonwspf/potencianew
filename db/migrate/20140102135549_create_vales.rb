class CreateVales < ActiveRecord::Migration
  def change
    create_table :vales do |t|
      t.float :valor
      t.string :motivo
      t.references :funcionario, index: true

      t.timestamps
    end
  end
end
