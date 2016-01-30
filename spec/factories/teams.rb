FactoryGirl.define do
  factory :team do
    name { Faker::Name.name  }
    needed_assignments { rand(10) }
  end
end
