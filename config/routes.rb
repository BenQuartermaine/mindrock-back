Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:show, :update]

      resources :categories, only: [:index]

        resources :challenges, only: [:index, :show] do
          resources :assignments, only: [:create]
        end

      resources :assignments, only: [] do
        resources :journals, only: [:create, :show]
      end

      resources :teams, only: [:index, :create]
    end
  end

  # add login path
  post 'login', to: 'login#login'
end
