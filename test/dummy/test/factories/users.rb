FactoryGirl.define do
  factory :user, aliases: [:author, :commenter] do
    sequence(:email) { |n| "person#{n+1}@example.com" }
    password "password"
    password_confirmation "password"
  end
end
