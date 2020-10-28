require 'rails_helper'

RSpec.describe User, type: :model do
 context 'name is not present' do
	 it 'Is not valid' do
		 user = User.create(name:'')
		 expect(user.errors.has_key?(:name)).to be true
	 end
 end
end
