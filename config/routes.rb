Rails.application.routes.draw do
  get "/" => "home#top" 
  
  devise_for :users, :controllers => {
    :passwords => 'users/passwords',
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end
  
  devise_for :supporters, :controllers => {
    :passwords => 'supporters/passwords',
    :registrations => 'supporters/registrations',
    :sessions => 'supporters/sessions'   
  } 

  devise_scope :supporters do
    get "sign_in", :to => "supporters/sessions#new"
    get "sign_out", :to => "supporters/sessions#destroy" 
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
