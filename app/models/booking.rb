class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  has_many :tasks
  has_one :review

  after_create :create_milestone

  private

  def create_milestone
    puts "Booking is being created"
    if self.user.bookings.count == 5
      puts "User milestone being created"
      milestone = Milestone.find_by_name("five_bookings")
      UserMilestone.create!(milestone: milestone, user: self.user)
    end
  end
end
