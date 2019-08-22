class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  accepts_nested_attributes_for :ingredient

  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
