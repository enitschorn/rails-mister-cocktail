class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true, allow_blank: false

  def average_rating
    reviews = self.reviews
    total = 0
    reviews.each do |review|
      total += review.rating.to_i
    end
    unless total == 0
      total / reviews.count
    else
      0
    end
  end
end
