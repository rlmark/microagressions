Rails.application.routes.draw do

  # HOME PAGE
  get 'welcome/index', to: 'welcome#index', as: :root

  # POSTS ROUTES
  get 'posts/new'

  get 'posts/create'

  get 'posts/update'

  get 'posts/edit'

  get 'posts/destroy'

  get 'posts/show'

  get 'posts/index', to: 'posts#index', as: :posts

  # CATEGORIES ROUTES
  get 'categories/new'

  get 'categories/create'

  get 'categories/update'

  get 'categories/edit'

  get 'categories/destroy'

  get 'categories/show'

  get 'categories/index'

  # COMMENTS ROUTES
  get 'comments/new'

  get 'comments/create'

  get 'comments/update'

  get 'comments/edit'

  get 'comments/destroy'

  get 'comments/show'

  get 'comments/index'

  get 'post/new'

  get 'post/create'

  get 'post/update'

  get 'post/edit'

  get 'post/destroy'

  get 'post/show'

  get 'post/index'

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
