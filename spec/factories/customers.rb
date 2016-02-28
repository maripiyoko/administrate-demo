FactoryGirl.define do
  factory :customer do
    sequence :name, "テストn_1"
    sequence(:email){|n| "tester-#{n}@example.com" }
  end
end
