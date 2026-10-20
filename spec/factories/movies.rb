FactoryBot.define do
  factory :movie do
    sequence(:title) { |n| "Film #{n}" }
    director { "Christopher Nolan" }
    release_date { Date.new(2010, 7, 16) }
  end
end