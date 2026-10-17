class Movie < ApplicationRecord
    has_many :reviews, dependant: :destroy

    validates :title, presence: true
end
