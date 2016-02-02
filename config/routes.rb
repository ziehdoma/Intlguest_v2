Rails.application.routes.draw do

 
  get 'reviews/index'

  get 'reviews/new'

  get 'reviews/edit'

  get 'reviews/show'

  get '/studentprofile', to: 'studentprofiles#new'
  post '/studentprofile', to: 'studentprofiles#create'
  get '/studentprofilepage/:id', to: 'studentprofiles#show', as: 'studentprofilepage'
  get '/studentprofilepage/:id/edit', to: 'studentprofiles#edit', as: 'edit'
  delete '/studentprofilepage/:id', to: 'studentprofiles#destroy', as: 'delete', method: :delete

  get '/familyprofile', to: 'familyprofiles#new'
  post '/familyprofile', to: 'familyprofiles#create'
  get '/familyprofilepage/:id', to: 'familyprofiles#show', as: 'familyprofilepage'
  get '/familyprofilepage/:id/edit', to: 'familyprofiles#edit', as: 'editfamily'
  delete '/familyprofilepage/:id', to: 'familyprofiles#destroy', as: 'deletefamily', method: :delete

  get '/home', to: 'home#index'
  get '/about', to: 'home#about'

  devise_for :students
  devise_for :families

  root 'studentprofiles#index'
  
  

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
