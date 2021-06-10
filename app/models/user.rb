class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lessons, through: :bookings
  has_many :lessons
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :tasks, through: :bookings
  # has_many :achievements, through: :tasks
  has_many :milestones
  has_many_attached :photos
end


