FactoryBot.define do
  factory :play do
    association(:user)
    association(:game)
    goal nil
    role 1
    result 1
  end
end
