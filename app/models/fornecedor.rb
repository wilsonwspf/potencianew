class Fornecedor < ActiveRecord::Base
  alias_attribute :name, :nome
  has_many :pagamentos
end
