class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates_numericality_of :rating, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5) }
end
