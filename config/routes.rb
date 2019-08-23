Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
concern :api_base do
  resources :cats
  resources :dogs
  get "dog/random" => 'dogs#random'
  get "cat/random" => 'cats#random'
end

namespace :v1 do
  concerns :api_base
end

end
