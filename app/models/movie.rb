class Movie < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates :title, presence: true


    def average_rating
        reviews.average(:rating)&.round(1) || "Brak ocen"
    end
end
