Rails.application.routes.draw do
  resources :school_classes, only: %i[index new create show edit update]
  resources :students, only: %i[index new create show edit update]
end
