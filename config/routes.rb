Rails.application.routes.draw do

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :notes

    authenticated :user do
      root 'notes#index', as: "authenticated_root"
    end

    root "welcome#index"

  end

end
