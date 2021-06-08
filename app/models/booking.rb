class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  has_many :tasks


end
