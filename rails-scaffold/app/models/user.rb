class User < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :age, numericality: { greater_than: 0}
end
