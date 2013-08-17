FuzzyComputingMachine::Application.routes.draw do

  resources :answers

  resources :questions

  resources :interviews

  resources :publications

  resources :people

  resources :sources

  get '/subjects', to: 'subjects#index', as: 'subjects'

  get '/about', to: 'static#about', as: 'about'

  root 'home#index'

end
