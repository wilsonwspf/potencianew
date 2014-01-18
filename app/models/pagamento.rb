class Pagamento < ActiveRecord::Base
  belongs_to :fornecedor
  belongs_to :card
end
