class Training < ApplicationRecord
	has_many :training_teams
	has_many :training_participants


	scope :trainings_in_the_future, lambda {
		where('date >= ? ', Date.today)
	}

	scope :user_trainings, lambda { |user|
		joins(:training_teams).where(training_teams:{team:user.team})

	}



	##INSTANCE METHODS##

	def maximum_reached?
		self.training_participants.count == self.max_participants
	end

end
