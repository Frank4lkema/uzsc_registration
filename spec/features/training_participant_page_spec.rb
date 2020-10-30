require 'rails_helper'
RSpec.describe 'Trying to reserve a Training', type: :feature do
	before {login_as(FactoryBot.create(:user,:player))}
	before { first_training = create(:training,:first)}
	before { create(:training,:second)}
	before { create(:training,:third)}

	scenario 'make a normal reservation',js:true do
		visit dashboard_home_path

		within(all(".training-card").first) do
			click_on 'Inschrijven'
		end

		expect(page).to have_content('Aangemeld voor training')

	end

	scenario 'Make a reservation when a training is full' do
		visit dashboard_home_path
		count = TrainingParticipant.count

		within(all(".training-card-maximum_reached").first) do
			click_on 'Inschrijven'
		end
		expect(count).to eql(TrainingParticipant.count)
	end
end