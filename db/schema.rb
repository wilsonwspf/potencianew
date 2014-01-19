# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140111151505) do

  create_table "agendas", force: true do |t|
    t.string   "nome"
    t.date     "nasc"
    t.string   "tel"
    t.string   "cel"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cargos", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cofres", force: true do |t|
    t.date     "data"
    t.float    "dineiro"
    t.float    "moeda"
    t.float    "chqvista"
    t.decimal  "dolares"
    t.decimal  "euros"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comandos", force: true do |t|
    t.string   "oque"
    t.text     "como"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ctgs", force: true do |t|
    t.string   "ctg_nome"
    t.string   "ctg_end"
    t.string   "ctg_cidade"
    t.string   "ctg_uf"
    t.string   "ctg_cep"
    t.string   "ctg_url"
    t.string   "ctg_email"
    t.string   "ctg_tel1"
    t.string   "ctg_tel2"
    t.string   "ctg_cel"
    t.date     "ctg_fundacao"
    t.string   "ctg_logo"
    t.text     "ctg_obs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rt_id"
  end

  add_index "ctgs", ["rt_id"], name: "index_ctgs_on_rt_id"

  create_table "cxdiarios", force: true do |t|
    t.date     "data"
    t.boolean  "almoco"
    t.float    "qtdrodizio"
    t.float    "dinheiro"
    t.float    "visaC"
    t.float    "visaD"
    t.float    "masterC"
    t.float    "masterD"
    t.float    "redeshop"
    t.float    "amex"
    t.float    "total"
    t.float    "media"
    t.float    "despesas"
    t.float    "descontos"
    t.float    "sobra"
    t.float    "falta"
    t.float    "caixinha"
    t.float    "cofre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "desserts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "falta", force: true do |t|
    t.string   "motivo"
    t.integer  "funcionario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "falta", ["funcionario_id"], name: "index_falta_on_funcionario_id"

  create_table "formapgtos", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fornecedors", force: true do |t|
    t.string   "nome"
    t.string   "tel"
    t.string   "cel"
    t.string   "email"
    t.string   "url"
    t.string   "contato"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", force: true do |t|
    t.string   "nome"
    t.date     "nascimento"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "tel"
    t.string   "cel"
    t.string   "email"
    t.string   "rg"
    t.string   "cpf"
    t.date     "admissao"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movimentos", force: true do |t|
    t.boolean  "es"
    t.float    "qtd"
    t.float    "preco"
    t.integer  "produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "movimentos", ["produto_id"], name: "index_movimentos_on_produto_id"

  create_table "mtgs", force: true do |t|
    t.string   "mtg_nome"
    t.string   "mtg_end"
    t.string   "mtg_cidade"
    t.string   "mtg_uf"
    t.string   "mtg_cep"
    t.string   "mtg_url"
    t.string   "mtg_email"
    t.string   "mtg_tel1"
    t.string   "mtg_tel2"
    t.string   "mtg_cel"
    t.date     "mtg_fundacao"
    t.string   "mtg_logo"
    t.text     "mtg_obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ocorrencia", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pagamentos", force: true do |t|
    t.date     "datapgto"
    t.float    "valor"
    t.boolean  "status"
    t.integer  "fornecedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pagamentos", ["fornecedor_id"], name: "index_pagamentos_on_fornecedor_id"

  create_table "produtos", force: true do |t|
    t.string   "descricao"
    t.integer  "unidade"
    t.float    "estfixo"
    t.float    "estinicial"
    t.float    "compra"
    t.float    "preco"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "unit_id"
  end

  add_index "produtos", ["unit_id"], name: "index_produtos_on_unit_id"

  create_table "rodizios", force: true do |t|
    t.date     "data"
    t.float    "qtd"
    t.float    "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "card_id"
  end

  add_index "rodizios", ["card_id"], name: "index_rodizios_on_card_id"

  create_table "rts", force: true do |t|
    t.string   "rt_nome"
    t.string   "rt_end"
    t.string   "rt_cidade"
    t.string   "rt_uf"
    t.string   "rt_cep"
    t.string   "rt_url"
    t.string   "rt_email"
    t.string   "rt_tel1"
    t.string   "rt_tel2"
    t.string   "rt_cel"
    t.date     "rt_fundacao"
    t.string   "rt_logo"
    t.text     "rt_obs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mtg_id"
  end

  add_index "rts", ["mtg_id"], name: "index_rts_on_mtg_id"

  create_table "sites", force: true do |t|
    t.string   "cliente"
    t.date     "data"
    t.text     "condicao"
    t.float    "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socios", force: true do |t|
    t.integer  "socio_id"
    t.string   "matricula"
    t.date     "filiacao"
    t.date     "nascimento"
    t.string   "nome"
    t.integer  "Tit_dep"
    t.string   "natural"
    t.string   "uf"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "ufcid"
    t.string   "telres"
    t.string   "telfunc"
    t.string   "celular"
    t.string   "rg"
    t.string   "oexp"
    t.integer  "cpf"
    t.string   "email"
    t.string   "conjuge"
    t.datetime "nascconjuge"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ctg_id"
  end

  add_index "socios", ["ctg_id"], name: "index_socios_on_ctg_id"

  create_table "tipodocs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidades", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.string   "name"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vales", force: true do |t|
    t.float    "valor"
    t.string   "motivo"
    t.integer  "funcionario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vales", ["funcionario_id"], name: "index_vales_on_funcionario_id"

  create_table "vddesserts", force: true do |t|
    t.date     "data"
    t.integer  "dessert_id"
    t.boolean  "almoco"
    t.integer  "qtd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
