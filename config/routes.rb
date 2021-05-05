Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "memos#index"

  get "/memos", to: "memos#index"
end
