class Funcionario < ActiveRecord::Base
    alias_attribute :name, :nome
  has_many :vales
end
