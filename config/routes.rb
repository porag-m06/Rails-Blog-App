Rails.application.routes.draw do
  get '/users', to: 'users#index', as: 'users'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:user_id/posts', to: 'posts#index', as: 'user_posts'
  get '/users/:user_id/posts/new', to: 'posts#new', as: 'new_post'
  post '/users/:user_id/posts/create', to: 'posts#create', as: 'create_post'
  get '/users/:user_id/posts/:id', to: 'posts#show', as: 'user_post'

  get '/users/:user_id/posts/:id/comments/new', to: 'comments#new', as: 'new_comment'
  post '/users/:user_id/posts/:id/comments/create', to: 'comments#create', as: 'create_comments'

  get '/users/:user_id/posts/:id/likes/new', to: 'likes#new', as: 'new_like'
  post '/users/:user_id/posts/:id/likes', to: 'likes#create', as: 'create_likes'
end
