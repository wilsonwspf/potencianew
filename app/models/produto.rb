class Produto < ActiveRecord::Base
  alias_attribute :name, :descricao
  belongs_to :category
  belongs_to :unit
end
