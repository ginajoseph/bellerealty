FactoryGirl.define do
  factory :user do
    confirmed_at Time.now
    email "test@example.com"
    first_name "Jhai"
    last_name "Joseph"
    password "please123"

    trait :admin do
      role 'admin'
    end

  end
end
