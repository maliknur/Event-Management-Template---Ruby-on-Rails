Rails.application.routes.draw do

  root :to => "events#index"

  # USERS routes
  get 'users/new' => 'users#new'

  get 'users/:id/edit' => 'users#edit'

  get 'users/:id/events' => 'users#event'

  post 'users' => 'users#create'
  
  get 'users/destroy'

  get 'users/:id'=> 'users#show'

  patch 'users/:id' => 'users#update'

  #SESSIONS routes

  post 'sessions' => 'sessions#create'

  get 'sessions/new' => 'sessions#new'

  get 'sessions/create'

  delete 'sessions'=> 'sessions#destroy'

  # EVENTS routes

  get 'events' => 'events#index'

  post 'events' => 'events#create'

  post 'events/join' => 'events#join'

  post 'events/cancel' => 'events#cancel'

  get 'events/:id/edit' => 'events#edit'
  
  get 'events/location' => 'events#location'


  patch 'events/:id' => 'events#update'

  delete 'events/:id' =>  'events#destroy'

  get 'events/:id' => 'events#show'


 
  #COMMENTS routes

  post 'comments' => 'comments#create'

  get 'comments' => 'comments#index'

end
