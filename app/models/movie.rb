class Movie < ApplicationRecord
  validates :overview, :title, presence: true, uniqueness: true
  has_many :lists, through: :bookmarks
  has_many :bookmarks
end
