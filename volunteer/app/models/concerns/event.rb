class Event < ActiveRecord::Base
  validates :date, presence: true
  validates :name, presence: true
  validates :user_id, presence: true
  validates :user_id, numericality: true
  validates :description, presence: true
  belongs_to :user
end
