Rails.application.routes.draw do

  devise_for :users

  get 'details/index'
  get 'details/show'
  get 'details/new'
  get 'details/delete' 
  get 'details/edit'


 get 'tiff/index'
 get 'tiff/create'
 post 'tiff/create'
 get 'tiff/view/:id', to: 'tiff#view'
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

  resources :tiff do
    member do
    put 'like', to: 'tiff#upvote'
  end
end

  resources :faqs

  resources :books

  resources :info

   resources :details

  resources :users




  get 'about/index'

  get 'welcome/index'



#  authenticated :user do |variable|
#    root 'dashboard#index', as: 'authenticated_root'
#  end

  root 'welcome#index'

end
