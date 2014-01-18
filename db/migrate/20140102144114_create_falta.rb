class CreateFalta < ActiveRecord::Migration
  def change
    create_table :falta do |t|
      t.string :motivo
      t.references :funcionario, index: true

      t.timestamps
    end
  end
end
