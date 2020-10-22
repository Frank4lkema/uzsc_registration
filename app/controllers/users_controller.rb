class UsersController < ApplicationController
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