Rails.application.routes.draw do
  get '/all_caps' => 'pages#caps'
  get '/starts_with_a' => 'pages#a_name'
  get '/guessing_game' => 'pages#guess'
end