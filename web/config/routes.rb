Tut1::Application.routes.draw do
  
  resources :families

  resources :products

  resources :discounts

  resources :sales

  resources :detail_sales

  get "index/home"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'index#home'

  devise_for :users, path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      password: 'reset_password'
    }
  get "users" => "users#index"
  get "profile" => "users#show", as: "current_user"
  get "profile/edit" => "users#edit", as: "edit_current_user"
  patch "profile" => "users#update", as: "user"

  #api
  namespace :api, defaults: {format: :json} do
    namespace :v1 do 

      post 'products/:id', to: 'products#create'
      get 'products/:id', to: 'products#show'
      get 'products', to: 'products#index'
      put 'products/:id', to: 'products#update'

      post 'discounts/:id', to: 'discounts#create'
      get 'discounts/:id', to: 'discounts#show'
      get 'discounts', to: 'discounts#index'
      put 'discounts/:id', to: 'discounts#update'

      post 'sales/:id', to: 'sales#create'
      get 'sales/:id', to: 'sales#show'
      get 'sales', to: 'sales#index'
      put 'sales/:id', to: 'sales#update'

      post 'detail_sales/:id', to: 'detail_sales#create'
      get 'detail_sales/:id', to: 'detail_sales#show'
      get 'detail_sales', to: 'detail_sales#index'
      put 'detail_sales/:id', to: 'detail_sales#update'
    end 
  end
  

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
