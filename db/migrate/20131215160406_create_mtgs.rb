class CreateMtgs < ActiveRecord::Migration
  def change
    create_table :mtgs do |t|
      t.string :mtg_nome
      t.string :mtg_end
      t.string :mtg_cidade
      t.string :mtg_uf
      t.string :mtg_cep
      t.string :mtg_url
      t.string :mtg_email
      t.string :mtg_tel1
      t.string :mtg_tel2
      t.string :mtg_cel
      t.date :mtg_fundacao
      t.string :mtg_logo
      t.text :mtg_obs

      t.timestamps
    end
  end
end
