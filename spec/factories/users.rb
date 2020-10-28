FactoryBot.define do
  factory :user do
    email { "Carl@Sagan.com" }
    last_name  { "Doe" }
    admin { false }
  end
end
