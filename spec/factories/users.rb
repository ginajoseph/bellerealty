FactoryGirl.define do
  factory :user do
    confirmed_at Time.now
    name "Gina Joseph"
    email "test@example.com"
    password "please123"

    trait :admin do
      role 'admin'
    end

  end
end
