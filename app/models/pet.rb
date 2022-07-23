class Pet < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  [:name, :age, :breed, :user_id, :size].each do |n|
    validates n, presence: true
  end
  validates :age, numericality: { only_integer: true }
  validates :size, inclusion: { in: %w(extra-small small medium large extra-large)}
end
