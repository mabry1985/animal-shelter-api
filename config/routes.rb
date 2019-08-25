Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
concern :api_base do
  resources :cats
  resources :dogs
  get "dog/random" => 'dogs#random'
  get "dog/search_breed" => 'dogs#search_breed'
  get "dog/search_age" => 'dogs#search_age'
  get "cat/random" => 'cats#random'
  get "cat/search_breed" => 'cats#search_breed'
  get "dog/search_breed" => 'dogs#search_breed'
end

namespace :v1 do
  concerns :api_base
end

end
