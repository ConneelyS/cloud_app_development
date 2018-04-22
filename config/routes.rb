Rails.application.routes.draw do
  
    root 'patients#index'
  
  # get 'static_pages/home'

    #get 'signup'
    get 'static_pages/sign_up'
    get 'static_pages/sign_in'
    get 'users/new'
  
    resources :doctor_notes
  #resources :microposts
    resources :patients
    resources :users
  
end
