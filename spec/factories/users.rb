FactoryBot.define do
	factory :user do
		email {"Carl@Sagan.com"}
		password {"test12345"}
	    name {"carl"}
		team {"Heren 7 "}

	end

	trait :player do
		after(:create) do |user|
			create(:user_role, user_id: user.id)
		end
	end
end
