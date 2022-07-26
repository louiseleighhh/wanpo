class Dogsitting < ApplicationRecord
  belongs_to :user
  geocoded_by :location
  validates :location, :availability, presence: true
  validates :rate, presence: true, numericality: { only_integer: true }

  include PgSearch::Model
  pg_search_scope :global_search,
                  against: [ :location, :rate ],
                  using: {
                    tsearch: { prefix: true }
                  }
end
