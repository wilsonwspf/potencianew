 class Category < ActiveRecord::Base
  alias_attribute :name, :descricao
  has_many :produtos
end
