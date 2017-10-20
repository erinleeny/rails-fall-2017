class Animal < ActiveRecord::Base
  #rules
  validates :name, presence: true
  validates :kind, presence: true
  validates :age, presence: true
  validates :age, numericality: true
  validates :location, presence: true
  has_many :visits
end
