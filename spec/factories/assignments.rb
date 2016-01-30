FactoryGirl.define do
  factory :assignment do
    membership
    date { Faker::Date.forward(23) }
  end
end
