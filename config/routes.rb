Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      jsonapi_resources :authors
      jsonapi_resources :courses
      jsonapi_resources :talents
    end
  end
end
