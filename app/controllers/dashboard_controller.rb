class DashboardController < ApplicationController
  def home
    @all_training_spots = Training.all
  end
end
