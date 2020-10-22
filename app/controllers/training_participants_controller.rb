class TrainingParticipantsController < ApplicationController
	def create
		@training = Training.find(params[:training_id])
		if @training.training_participants.count < @training.max_participants
			TrainingParticipant.create(user_id:current_user.id, training_id:@training.id)
			flash[:notice] = "Aangemeld voor training"
			redirect_to root_path
		else
			flash[:alert] = "Maximaal aantal personen bereikt"
			redirect_to root_path
		end
	end
end