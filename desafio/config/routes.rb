Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/welcome' => 'formularios#home'
  get 'formularios' => 'formularios#index' 
  post 'formularios' => 'formularios#import', as: :import_formularios
  #resources :formularios do
  #  collection { post :import }
  #end
 
end
