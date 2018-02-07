FactoryBot.define do
  factory :play do
    association(:user)
    association(:game)
    memory "1234"
    role 1
    result 1
  end
end
