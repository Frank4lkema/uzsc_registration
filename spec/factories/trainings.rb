FactoryBot.define do
  factory :training do

  end

  trait :first do
    date { "#{Date.today + 2.days}" }
    start_hour { "20:30" }
    end_hour { "21:30" }
    max_participants { 1 }
    after(:create) do |training|
      create(:training_team,  training_id: training.id)
    end
  end

  trait :second do
    date { "#{Date.today + 4.days}" }
    start_hour { "20:30" }
    end_hour { "21:30" }
    max_participants { 0 }
    after(:create) do |training|
      create(:training_team,  training_id: training.id)
    end
  end

  trait :third do
    date { "#{Date.today + 6.days}" }
    start_hour { "20:30" }
    end_hour { "21:30" }
    max_participants { 1 }
    after(:create) do |training|
      create(:training_team,  training_id: training.id)
    end
  end

end
