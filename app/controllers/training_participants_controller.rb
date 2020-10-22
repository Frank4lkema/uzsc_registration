class TrainingParticipantsController < ApplicationController
	def create
		@training = Training.find(params[:training_id])
		if @training.training_participants.count < @training.max_participants
			if current_user.training_participants.joins(:training).where('trainings.date >= ?',Date.today).blank?
				TrainingParticipant.create(user_id:current_user.id, training_id:@training.id)
				flash[:notice] = "Aangemeld voor training"
			else
				flash[:alert] = "Kan nog niet aanmelden, wacht 1 dag na laatste training"
			end

		else
			flash[:alert] = "Maximaal aantal personen bereikt"
		end
		redirect_to dashboard_home_path
	end

	def destroy
		@training_participant = TrainingParticipant.find( params[:id])
		if @training_participant.present?
			@training_participant.destroy
			flash[:notice] = "Afgemeld voor training"
		else
			flash[:alert] = "Afmelding mislukt"
		end

		redirect_to dashboard_home_path
	end
end