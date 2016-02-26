FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "dummyEmail#{n}@email.com"
    end
    password "secretPassword"
    password_confirmation "secretPassword"
  end

  factory :course do
    title "Test Course"
    description "Test Course"
    cost 0
    association :user
  end
end