require 'rails_helper'

RSpec.describe 'Creating an author', type: :feature do
	scenario 'valid inputs' do
		visit new_user_registration_path
		fill_in 'Email', with: 'Carl@Sagan.com'
		fill_in 'Password', with: 'test12345'
		fill_in 'Password confirmation', with: 'test12345'
		click_on 'Sign up'
		expect(page).to have_content('Welcome! You have signed up successfully.')
	end
end