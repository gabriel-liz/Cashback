class Purchase < ApplicationRecord
  has_many :provider
  has_one :tourist

  validates :provider, :tourist

  before_validation :set_total_ticket

  accepts_nested_attributes_for :purchase_itens, allow_destroy: true

  private 

    def set_total_ticket
      total_ticket = 0      
      purchase_itens.each do |purchase_itens|
      provider.each do |provider|
        total_ticket += purchase_itens.number_tickets * provider.ticket_value    
      end 
    end
      self.total_purchase = total_ticket  
    end

    def set_total_cashback
      total_cashback = 0
      purchase_itens.each do |purchase_itens|
      provider.each do |provider|
        total_cashback += purchase.total_purchase * provider.cashback
      end  
    end      
      self.total_cashback = total_cashback
    end
end
