require 'rails_helper'

RSpec.describe 'Creating a new Player', type: :feature do
	before {login_as(FactoryBot.create(:user,:admin))}
	before {visit new_user_path}

	# scenario 'Creating a new player' do
	# 	within("#new_user") do
	# 		fill_in 'E-mail', with: 'mats@gmail.com'
	# 		fill_in 'Naam', with: 'Mats'
	# 	end
	# 	click_on 'Maak speler aan'
	# 	expect(page).to have_content('Speler aangemaakt')
	# end
	#
	# scenario 'Creating a player that already exists' do
	# 	within("#new_user") do
	# 		fill_in 'E-mail', with: 'Carl@Sagan.com'
	# 		fill_in 'Naam', with: 'carl'
	# 	end
	# 	click_on 'Maak speler aan'
	# 	expect(page).to have_content('Speler niet aangemaakt')
	# end
	#
	#
	# scenario 'creating a new player without name' do
	# 	within("#new_user") do
	# 		fill_in 'E-mail', with: 'dexter@gmail.com'
	# 		fill_in 'Naam', with: ''
	# 	end
	# 	click_on 'Maak speler aan'
	# 	expect(page).to have_content('Speler niet aangemaakt')
	# end
	#
	# scenario 'creating a new player without e-mail' do
	# 	within("#new_user") do
	# 		fill_in 'E-mail', with: ''
	# 		fill_in 'Naam', with: 'dexter'
	# 	end
	# 	click_on 'Maak speler aan'
	# 	expect(page).to have_content('Speler niet aangemaakt')
	# end
end