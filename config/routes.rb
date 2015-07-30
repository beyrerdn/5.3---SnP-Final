Rails.application.routes.draw do
<<<<<<< HEAD
  resources :authors
  resources :posts

  resources :authors do
    resources :posts
  end

=======
>>>>>>> bd2e8496480584370d72914f80b6da766f4216ab
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'posts#show_first'

<<<<<<< HEAD
   get '/list' => 'posts#index', as: :list

   get '/about' => 'authors#about', as: :about

=======
   get 'posts/:id' => 'posts#show', as: :post

   get 'about' => 'authors#about', as: :about

   get 'authors' => 'authors#index', as: :authors

   get ':last_name' => 'posts#by_author', as: :author_posts
>>>>>>> bd2e8496480584370d72914f80b6da766f4216ab

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
