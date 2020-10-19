class DashboardController < ApplicationController
  def home
    binding.pry
    @all_training_spots = Training.all
  end
end
