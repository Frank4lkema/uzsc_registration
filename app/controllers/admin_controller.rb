class AdminController < ApplicationController
	def player_overview
		@team_users = User.where(team: current_user.team)
	end
end