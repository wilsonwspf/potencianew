class CreateRts < ActiveRecord::Migration
  def change
    create_table :rts do |t|
      t.string :rt_nome
      t.string :rt_end
      t.string :rt_cidade
      t.string :rt_uf
      t.string :rt_cep
      t.string :rt_url
      t.string :rt_email
      t.string :rt_tel1
      t.string :rt_tel2
      t.string :rt_cel
      t.date :rt_fundacao
      t.string :rt_logo
      t.text :rt_obs

      t.timestamps
    end
  end
end
