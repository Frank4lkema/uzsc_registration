require 'rails_helper'

RSpec.describe 'Creating an author', type: :feature do
	before {create(:user, :player)}
	before {visit new_user_session_path}

	scenario 'Inloggen juist' do
		fill_in 'E-mail', with: 'Carl@Sagan.com'
		fill_in 'Wachtwoord', with: 'test12345'
		click_on 'Inloggen'
		expect(page).to have_content('Signed in successfully.')
	end

	scenario 'Inloggen geen e-mail' do
		fill_in 'E-mail', with: ''
		fill_in 'Wachtwoord', with: 'test12345'
		click_on 'Inloggen'
		expect(page).to have_content("Invalid Email or password")
	end
end