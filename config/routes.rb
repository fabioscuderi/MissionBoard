Rails.application.routes.draw do
  resources :todos
	resources :users, only: [:index, :create, :destroy]
	resources :roles
	get "/missionboard" => "missionboard#show", as: "missionboard"
end
