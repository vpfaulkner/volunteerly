FactoryGirl.define do
  factory :activity do
    name { Faker::Name.name  }
    needed_slots { rand(10) }
  end
end
