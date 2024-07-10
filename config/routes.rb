Rails.application.routes.draw do
  resources :books do
    collection do
      get :backlog
      get :reading
      get :completed
    end
  end

  get 'change_language/:locale', to: 'application#change_language', as: :change_language
  root 'books#index'
end
