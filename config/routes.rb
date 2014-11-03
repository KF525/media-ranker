Rails.application.routes.draw do

  #Movie Routes
  get "movies",                 to: "movies#index",       as: :movies
  get "movies/new",             to: "movies#new",         as: :add_movie
  post "movies",                to: "movies#create"
  get "movies/:id",             to: "movies#show",        as: :movie
  get "movies/:id/edit",        to: "movies#edit",        as: :edit_movie
  patch "movies/:id",           to: "movies#update"
  delete "movies/:id/destroy",  to: "movies#destroy",     as: :delete_movie
  patch "movies/:id/upvote",    to: "movies#upvote",      as: :upvote_movie

  #Book Routes
  get "books",                  to: "books#index",        as: :books
  get "books/new",              to: "books#new",          as: :add_book
  post "books",                 to: "books#create"
  get "books/:id",              to: "books#show",         as: :book
  get "books/:id/edit",         to: "books#edit",         as: :edit_book
  patch "books/:id",            to: "books#update"
  delete "books/:id/destroy",   to: "books#destroy",      as: :delete_book
  patch "books/:id/upvote",     to: "books#upvote",       as: :upvote_book

  #Albums Routes
  get "albums",                 to: "albums#index",       as: :albums
  get "albums/new",             to: "albums#new",         as: :add_album
  post "albums",                to: "albums#create"
  get "albums/:id",             to: "albums#show",        as: :album
  get "albums/:id/edit",        to: "albums#edit",        as: :edit_album
  patch "albums/:id",           to: "albums#update"
  delete "albums/:id/destroy",  to: "albums#delete",      as: :delete_album
  patch "albums/:id/upvote",    to: "albums#upvote",      as: :upvote_album

  root "home#index"


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
