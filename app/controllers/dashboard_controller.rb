class DashboardController < ApplicationController
  def home
    @all_training_spots = Training.joins(:training_teams).where(training_teams:{team:current_user.team})

  end
end
