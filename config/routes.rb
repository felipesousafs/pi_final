Rails.application.routes.draw do
  root 'home#index'
  namespace :api do
    namespace :v1 do
      devise_for :users, controllers: {
          sessions: 'api/v1/sessions'
      }
      scope 'users/:user_id' do
        resources :messages, only: %i[show crate]
        resources :followers, only: %i[index crate destroy]
        resources :contacts, only: %i[index show crate update destroy]
        resources :strikes, only: %i[index crate destroy]
        resources :addresses, only: %i[index show crate update destroy]
        resources :blocks, only: %i[crate destroy]
      end
      resources :friendships, only: %i[index show crate update destroy] #Usar show para mostrar coisas em comum entre os amigos
      resources :posts, only: %i[index show crate update destroy] do
        resources :reactions, only: %i[index crate update destroy]
        resources :comments, only: %i[index crate update destroy]
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
