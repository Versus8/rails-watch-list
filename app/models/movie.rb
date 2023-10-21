class Movie < ApplicationRecord
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
