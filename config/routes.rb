Rails.application.routes.draw do
  get 'stocks/index'

  get '/blogs', to: 'blogs#index'
  get '/stocks', to: 'stocks#index'
  resources :blogs do 
    collection do 
      post :confirm
    end
  end
  
  # get '/contact', to: 'contacts#new'
  # resources :contact
  resources :contacts, only: [:new, :create]
end

