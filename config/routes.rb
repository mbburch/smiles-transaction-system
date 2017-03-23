Rails.application.routes.draw do
  resources :humans do
    resources :transfers
  end
end
