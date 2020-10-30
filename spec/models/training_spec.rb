require 'rails_helper'

RSpec.describe Training, type: :model do

	context 'Check when maximium participants is reached' do
		it 'when maximum is reach it should return true' do
			subject_1 = create(:training,:first)
			subject_2 = create(:training,:second)

			expect(subject_1.maximum_reached?).to be(false)
			expect(subject_2.maximum_reached?).to be(true)
		end
	end
end
