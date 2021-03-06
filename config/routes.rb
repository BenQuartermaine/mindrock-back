Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:show, :update]

      resources :categories, only: [:index]

        resources :challenges, only: [:index, :show] do
          resources :assignments, only: [:create]
        end
      resources :users, only: [:show] do
        resources :assignments, only: [:index]
      end

      resources :assignments, only: [] do
        resources :journals, only: [:create, :index]
      end

      resources :teams, only: [:show, :create, :update]
    end
  end

  # add login path
  post 'login', to: 'login#login'
end
