require 'rails_helper'

RSpec.describe Review, type: :model do
  it "jest poprawna z prawidłowymi danymi" do
    review = build(:review)
    expect(review).to be_valid
  end

  it "nie jest poprawna bez oceny (rating)" do
    review = build(:review, rating: nil)
    expect(review).not_to be_valid
    expect(review.errors[:rating]).to include("can't be blank")
  end

  it "nie jest poprawna gdy ocena jest poza skalą 1-5" do
    review = build(:review, rating: 6)
    expect(review).not_to be_valid
  end
end