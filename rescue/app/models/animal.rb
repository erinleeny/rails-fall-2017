class Animal < ActiveRecord::Base
  #rules
  validates :name, presence: true
  validates :kind, presence: true
  validates :age, presence: true
  validates :age, numericality: true
end
