class CreateComandos < ActiveRecord::Migration
  def change
    create_table :comandos do |t|
      t.string :oque
      t.text :como

      t.timestamps
    end
  end
end
