Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root to: "static_pages#home", as: "authenticated_root"
    end

    unauthenticated do
      root to: "devise/sessions#new", as: "unauthenticated_root"
    end
  end
end
