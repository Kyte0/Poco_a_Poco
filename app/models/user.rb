class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :classes, class_name: 'Lesson'
  has_many :class_bookings, through: :classes, source: :bookings
  has_many :class_reviews, through: :class_bookings, source: :reviews
  has_many :bookings
  has_many :lessons, through: :bookings
  has_many :reviews, through: :bookings
  has_many :tasks, through: :bookings
  has_many_attached :photos
  has_many :user_milestones
  has_many :milestones, through: :user_milestones
  has_many :notifications, dependent: :destroy
end
