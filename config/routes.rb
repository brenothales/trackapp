Rails.application.routes.draw do

  resources :tasks, only: [:index, :show, :create, :destroy]

  resources :subtasks, only: [:create, :destroy] do
    member do
      get :start, :stop, :finish
    end
  end

  root to: 'tasks#index'

end
