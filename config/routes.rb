Rails.application.routes.draw do
  get 'faqs/index'
  get 'faqs/new'
  get 'faqs/create'
  get 'faqs/show'
  get 'faqs/edit'
  get 'faqs/update'
  get 'faqs/destroy'

 get 'tiff/create'
 post 'tiff/create'
 get 'tiff/view/:id', to: 'tiff#view'
 get 'tiff/index'
 get 'tiff/delete/:id', to: 'tiff#delete'
 get 'tiff/edit/:id', to: 'tiff#edit'
 post 'tiff/edit/:id', to: 'tiff#edit'

  devise_for :admins
   
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :projects do
    resources :improvements do
    	member do
    		put "like" => "improvements#vote"
    	end
    end
  end


  resources :principles

  resources :tiff

  resources :faqs

  resources :books

  devise_for :users

  get 'about/index'

  get 'welcome/index'



#  authenticated :user do |variable|
#    root 'dashboard#index', as: 'authenticated_root'
#  end

  root 'welcome#index'

end
