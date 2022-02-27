Rails.application.routes.draw do
  resources :books
  namespace :buyers do
    get 'dashboard/index'
  end
  namespace :sellers do
    get 'dashboard/index'
  end
  root to: 'pages#home'

  devise_for :sellers, path: 'sellers', controllers: {
    sessions: 'sellers/sessions',
    registrations: 'sellers/registrations'
  }

  devise_for :buyers, path: 'buyers', controllers: {
    sessions: 'buyers/sessions',
    registrations: 'buyers/registrations'
  }

  devise_scope :seller do
    authenticated :seller do
      namespace :sellers do
        get 'dashboard/index', as: :authenticated_root
      end
    end
  end

  devise_scope :buyer do
    authenticated :buyer do
      namespace :buyers do
        get 'dashboard/index', as: :authenticated_root
      end
    end
  end
end
