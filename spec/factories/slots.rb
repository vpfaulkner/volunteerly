FactoryGirl.define do
  factory :slot do
    user
    activity
    commitment
    date { Faker::Date.forward(23) }
  end
end
