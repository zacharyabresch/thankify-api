Rails.application.routes.draw do
  resources :thankifications do
  	resources :gratitudes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
