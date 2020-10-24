Rails.application.routes.draw do
	devise_for :users
	devise_scope :user do
		root to: "devise/sessions#new"
	end

	get 'dashboard/home'
	get 'admin/player_overview'

	resources :training_participants
	resources :users

end
