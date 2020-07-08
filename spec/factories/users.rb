FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "Name#{n}" }
    sequence(:nickname) { |n| "Nickname#{n}" }
    avatar_url { 'https://avatars2.githubusercontent.com/u/0?v=4' }
  end
end
