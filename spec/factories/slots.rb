FactoryGirl.define do
  factory :slot do
    membership
    date { Faker::Date.forward(23) }
  end
end
