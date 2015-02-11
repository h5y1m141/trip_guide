Rails.application.routes.draw do
  resources :spots, only: [:show] do
    collection do
      get :top
      get :near
      get :search
    end
  end

  resources :restaurants, only: [:show] do
    collection do
      get :top
      get :near
      get :search
    end
  end

end
