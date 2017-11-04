class User < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true
  validates :age, numericality: true
  validates :username, presence: true
  validates :password, presence: true
  has_many :events
end
