Rails.application.routes.draw do
    scope '/api', defaults: {format: :json} do
      resources :provider, only: [:create, :index, :show]
      resources :purchase, only: [:create, :index, :show]
      resources :tourist, only:  [:create, :index, :show]
    end
end
