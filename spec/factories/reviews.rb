FactoryBot.define do
  factory :review do
    rating { 5 }
    comment { "Świetny film!" }
    user
    movie
  end
end