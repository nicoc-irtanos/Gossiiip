Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'static_pages#home'
  resources :gossips

  post 'gossips/:id', to: 'comments#create'
  get 'gossip/:id/edit_comment', to: 'comments#edit'
end
