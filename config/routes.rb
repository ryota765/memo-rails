Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "memos#index"

  resources :memos do
    resources :comments
  end
end
