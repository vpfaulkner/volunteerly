FactoryGirl.define do
  factory :user do
    name { Faker::Name.name  }
    email { Faker::Internet.email }
    last_sign_in_at Time.now
    password 'password'
    password_confirmation 'password'
  end
end
