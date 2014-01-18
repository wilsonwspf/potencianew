class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :nome
      t.date :nasc
      t.string :tel
      t.string :cel
      t.string :email

      t.timestamps
    end
  end
end
