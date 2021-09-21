Rails.application.routes.draw do
  resources :posts do
    # for comments you do ne the post/:post_id/comment for every route
    # so you can nest it like this
    resources :comments
  end

  resources :pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
