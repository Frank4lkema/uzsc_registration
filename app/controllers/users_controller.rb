class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		@user.password = BASIC_PASSWORD
		if @user.save
			flash[:notice] = "Speler aangemaakt"
		else
			flash[:alert] = "Speler niet aangemaakt"
		end
		redirect_to admin_player_overview_path
	end

	def edit
		@user = User.find(params[:id])
	end


	def update
		@user = User.find(params[:id])

		if @user and @user.update(user_params)
			flash[:notice] = "Profiel gewijzigd"
			bypass_sign_in @user
		else
			flash[:alert] = "Profiel niet bij gewerkt"
		end

		redirect_to dashboard_home_path
	end

	def destroy
		@user = User.find( params[:id])
		if current_user != @user and @user.present? and @user.destroy
			flash[:notice] = "Speler verwijderd"
		else
			flash[:alert] = "Speler verwijderen mislukt"
		end

		redirect_to admin_player_overview_path
	end



	private
	def user_params
		params.require(:user).permit(
			:email,
			:name,
			:team,
			:password
			)
	end
end