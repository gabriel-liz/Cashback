class TouristController < ApplicationController
  
  before_action :set_tourist, only: :show

  def index
    @tourists = Tourist.all.order(:name)
  end

  def create
    tourist = Tourist.new(tourist_params)    
    if tourist.save
      render json: tourist, status: :created
    else
      render json: tourist.erros, status: :unprocessable_entity
    end
  end
      
  def show    
  end 

  private 
  
  def set_tourist
    @tourist = Tourist.find(params[:id])
  end

  def tourist_params
    params.require(:tourist).permit(:name, :cpf)
  end 
end