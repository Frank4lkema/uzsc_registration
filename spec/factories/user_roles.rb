FactoryBot.define do
	factory :user_role do

	end

	trait   :player_role do
		role_type {"player"}
	end

	trait :admin_role do
		role_type {"admin"}
	end
end
