require 'rails_helper'
RSpec.describe 'Trying to reserve a Training', type: :feature do
	before {login_as(FactoryBot.create(:user,:player))}
	before { first_training = create(:training,:first)}
	before { create(:training,:second)}
	before { create(:training,:third)}

	scenario 'make a normal reservation' do
		visit dashboard_home_path


	end

	scenario 'Make a reservation when a training is full' do
		visit dashboard_home_path

		within(all(".wrapper")[1]) do
			click_on 'Aanmelden'
		end
		expect(page).to have_content('Maximaal aantal personen bereikt')
	end

	scenario 'Make a reservation when you have a more frequent training already reserved ' do
		visit dashboard_home_path

		within(all(".wrapper").first) do
			click_on 'Aanmelden'
		end
		
		expect(page).to have_content('Aangemeld voor training')

		within(all(".wrapper")[2]) do
			click_on 'Aanmelden'
		end
		expect(page).to have_content('Kan nog niet aanmelden, wacht 1 dag na laatste training')
	end
end