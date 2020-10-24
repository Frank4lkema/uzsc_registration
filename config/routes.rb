Rails.application.routes.draw do
	devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout" }
	devise_scope :user do
		root to: "devise/sessions#new"
	end

	get 'dashboard/home'
	get 'admin/player_overview'

	resources :training_participants
	resources :users

end
