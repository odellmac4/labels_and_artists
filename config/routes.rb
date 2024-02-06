Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get '/', to: 'welcome#index'
  get '/recordlabels', to: 'record_labels#index'
  get '/recordlabels/new', to: 'record_labels#new'
  post '/recordlabels', to: 'record_labels#create'
  get '/recordlabels/:id', to: 'record_labels#show'
  get '/recordlabels/:id/edit', to: 'record_labels#edit'
  patch '/recordlabels/:id', to: 'record_labels#update'
  get '/artists', to: 'artists#index'
  get '/artists/:id/edit', to: 'artists#edit'
  patch '/artists/:id', to: 'artists#update'
  get '/artists/:id', to: 'artists#show'
  get '/recordlabels/:record_label_id/artists/new', to: 'record_label_artists#new'
  post '/recordlabels/:record_label_id/artists', to: 'record_label_artists#create' 
  get '/recordlabels/:record_label_id/artists', to: 'record_label_artists#index'
end
