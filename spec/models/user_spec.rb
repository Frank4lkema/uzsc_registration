require 'rails_helper'

RSpec.describe User, type: :model do
	context 'Name and email is not present' do
		subject {User.create(name: '', email: '')}

		it 'is not valid' do
			expect(subject.errors).to have_key(:name)
			expect(subject.errors).to have_key(:email)
		end
	end
	context 'Name and email is present' do
		subject {create(:user)}
		it 'is valid' do
			expect(subject).to be_valid
		end
	end

	context 'Name is not uniq' do
		before { other_subject = create(:user)}
		subject { User.create(name:"carl")}
		it 'name is not uniq' do
		    expect(subject.errors[:name]).to include('has already been taken')
		end
	end
end
