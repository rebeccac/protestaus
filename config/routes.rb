Rails.application.routes.draw do

  get 'users/index'

  devise_for :users
  root to: 'pages#index'

  get "pages/related_sites"

  resources :protests
  resources :users

  match '/protests', to: 'protests#index', via: [:get]
  match '/protests/state', to: 'protests#state', via: [:get]
  match '/protests/hidden', to: 'protests#hidden', via: [:get]
  match '/new', to: 'protests#new', via: [:get]
  match '/my_protests', to: 'protests#my_protests', via: [:get]
  match '/search', to: 'protests#search', via: [:get]


  match '/related_sites', to: 'pages#related_sites', via: [:get]
  match '/about_us', to: 'pages#about_us', via: [:get]
  match '/contact_us', to: 'pages#contact_us', via: [:get]
  match '/admin', to: 'pages#admin', via: [:get]

  match '/users', to: 'users#index', via: [:get]


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
