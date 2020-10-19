class Training < ApplicationRecord
	has_many :training_teams
	has_many :training_participants
end
