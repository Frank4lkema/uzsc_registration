class DashboardController < ApplicationController
  def home
    @all_training_spots = Training.select{|x| x.team.include?(current_user.team)}

  end
end
