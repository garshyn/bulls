FactoryBot.define do
  factory :move do
    association(:play)
    request "1234"
    response nil
  end
end
