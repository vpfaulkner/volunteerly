FactoryGirl.define do
  factory :team do
    name { Faker::Name.name  }
    needed_slots { rand(10) }
  end
end
