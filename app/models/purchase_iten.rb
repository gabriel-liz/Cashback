class PurchaseIten < ApplicationRecord
  belongs_to :ticket_value
  belongs_to :cashback
end
