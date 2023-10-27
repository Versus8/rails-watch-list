class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews
  has_one_attached :picture

  validates :name, uniqueness: true, presence: true
end
