AddLive::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :clients
  resources :client
  resources :ads
  resources :pin
  devise_for :users
  resources :clicks
  
  devise_for :users do
  get '/users/sign_out' => 'devise/sessions#destroy'
end

  get "users/new"

  # The priority is based upon order of creation:
  # first created -> highest priority.
  root :to => 'staticpage#index'
  match '/vision', to: 'staticpage#vision'
  match '/about', to: 'staticpage#about'
  match '/career', to: 'staticpage#career'
  match '/rewards', to: 'staticpage#faq'
  match '/plan', to: 'staticpage#plan'
  match '/support', to: 'staticpage#support'
  match '/whyaddlive', to: 'staticpage#whyaddlive'
  match '/statistics', to: 'staticpage#statistics'
  match '/ads/index', to: 'ads#index'
  match '/workdesk/ads_list', to: 'workdesk#ads_list'
  match '/ads/:id', to: 'ads#show'
  match '/searchyourneed', to: 'staticpage#need'
  match '/signup', to: 'users#new'
  match '/Workdesk', to: 'Workdesk#index'
  match '/client', to: 'client#index'
  match '/check', to: 'ads#check'
  match '/fail', to: 'ads#fail'
  match '/success', to: 'ads#success'
  match '/career_page/:id', to: 'staticpage#career_page'
  match '/full_ads/:id', to: 'client#full_ads'
  match '/workdesk/create_request', to: 'workdesk#create_request'
  match 'workdesk/paid_history', to: 'workdesk#paid_history'
  match '/users', to: 'users#edit'
  match '/update', to: 'users#update'
  match '/legal', to: 'staticpage#legal'
  
  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'
  
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
