Rails.application.routes.draw do
  get 'assignments/show'
  get 'challenges/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :user, only: [:show, :update]

        resources :challenges, only: [:index] do
          resources :assignments, only: [:show]
        end

        resources :assignments, only: [:show] do
          resources :journals, only: [:create]
        end
    end
  end

  # add login path
  post 'login', to: 'login#login'
end
