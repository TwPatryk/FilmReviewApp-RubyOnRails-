require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "#average_rating" do
    it "oblicza poprawną średnią ocen" do
      movie = create(:movie)
      create(:review, movie: movie, rating: 4)
      create(:review, movie: movie, rating: 2)

      # (4 + 2) / 2 = 3.0
      expect(movie.average_rating).to eq(3.0)
    end

    it "zwraca 'Brak ocen' gdy film nie ma recenzji" do
      movie = create(:movie)
      expect(movie.average_rating).to eq("Brak ocen")
    end
  end
end