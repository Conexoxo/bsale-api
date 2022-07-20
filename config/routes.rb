Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :show]
      resources :categories, only: [:index, :show]
    end
  end

end
