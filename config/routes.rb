Rails.application.routes.draw do
  resources :books do
    collection do
      get :backlog
      get :reading
      get :completed
    end
  end
  root 'books#index'
end
