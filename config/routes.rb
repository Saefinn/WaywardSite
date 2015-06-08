Rails.application.routes.draw do
  resources :events
  #Get resources for each controller to map routes
  resources :items
  resources :characters
  resources :pages
  resources :statuses
  resources :posts do
    resources :comments
  end
  
  
  

  #get specific routes for views that match no models or scaffolding
  get 'show_users/show'
  get 'profiles/show'
  get 'pages/index'


  #Map routes for "devise"
  devise_for :users
  
  devise_scope :user do
    get 'register',to: 'devise/registrations#new', as: :register
    get 'login',to: 'devise/sessions#new', as: :login
    get 'logout',to: 'devise/sessions#destroy', as: :logout
  end
  
  #Custom routes
  get 'feed', to: 'statuses#index', as: :feed
  root to: 'events#index'
  get 'rules', to: 'pages#index', as: :rules

  get 'journal', to: 'statuses#index', as: :journal
  get 'journal/:id/edit', to: 'statuses#edit', as: :journal_edit
  get 'journal/new', to: 'statuses#new', as: :journal_new
  
  get 'journal/:id', to: 'statuses#show'
  
  get 'user_list', to: 'show_users#show', as: :user_list
  
  get  '/:id', to: 'profiles#show'
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
