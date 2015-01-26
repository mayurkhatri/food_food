Rails.application.routes.draw do
  get 'home/welcome'

  get 'shows/index'

  get 'shows/show'

  get 'chefs/index'

  get 'chefs/show'

  get 'recipes/category_index'

  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}

  devise_scope :user do
    get 'users/sign_out', to: 'devise/sessions#destroy'
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#welcome'

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
  concern :recipeable do
    resources :recipes
  end

  concern :videoable do
    resources :videos
  end

  concern :showable do
    resources :shows
  end
  
  resources :recipes
  resources :cuisines, concerns: [:recipeable, :videoable]
  resources :courses, concerns: [:recipeable, :videoable]
  resources :shows, concerns: [:recipeable, :videoable]
  resources :chefs, concerns: [:recipeable, :videoable, :showable]
end
