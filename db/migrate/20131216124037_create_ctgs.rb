class CreateCtgs < ActiveRecord::Migration
  def change
    create_table :ctgs do |t|
      t.string :ctg_nome
      t.string :ctg_end
      t.string :ctg_cidade
      t.string :ctg_uf
      t.string :ctg_cep
      t.string :ctg_url
      t.string :ctg_email
      t.string :ctg_tel1
      t.string :ctg_tel2
      t.string :ctg_cel
      t.date :ctg_fundacao
      t.string :ctg_logo
      t.text :ctg_obs

      t.timestamps
    end
  end
end
