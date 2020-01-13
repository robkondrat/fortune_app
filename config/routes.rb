Rails.application.routes.draw do
  namespace :api do
    get '/random_fortune_url' => 'fortunes#random_fortune_action'
    get '/random_number_url' => 'fortunes#random_number_action'
    get '/visits_url' => 'fortunes#visits_action'
    get '/bottles_url' => 'fortunes#bottles_action'
  end
end
