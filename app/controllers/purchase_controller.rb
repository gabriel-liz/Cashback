class PurchaseController < ApplicationController

before_action :set_order, only: :show

  def create
    purchase = Purchase.new(purchase_params)
    if purchase.save
      render json: @purchase, status: :created    
    else
      render json: purchase.erros, status: :unprocessable_entity
    end      
  end

  def show
  end

  private 

  def set_purchase
    @purchase = Purchase.find(params[:id])
  end

  def purchase_params
    params.require(:purchase).permit(
      #:total_purchase, :total_cashback, 
      :provider, :tourist, purchase_itens: [:number_tickets])    
      #:ticket_value
  end 
end
