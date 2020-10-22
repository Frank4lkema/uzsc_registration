class DashboardController < ApplicationController
  def home
    @all_training_spots = Training.user_trainings(current_user).trainings_in_the_future
  end
end
