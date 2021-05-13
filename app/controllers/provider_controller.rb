class ProviderController < ApplicationController
  def index
    @providers = Provider.all.order(:name)
  end
end
