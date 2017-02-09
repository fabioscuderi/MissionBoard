Rails.application.routes.draw do
  	resources :categories
  	resources :posts
  	resources :moods
  	resources :todos
	resources :users, only: [:index, :create, :destroy, :edit, :update]
	resources :roles
	get "/enter" => "missionboard#enter", as: "enter"
	get "/missionboard" => "missionboard#show", as: "missionboard"
	get "/exit" => "missionboard#exit", as: "exit"
	root "users#index"
end
