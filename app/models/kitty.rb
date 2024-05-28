class Kitty < ApplicationRecord
  SPECIES = ['Dog', 'Cat', 'Horse', 'Fish', 'Turtle']
  validates :address, :species, :description, :found_at, presence: true
  validates :species, inclusion: { in: SPECIES }
end
