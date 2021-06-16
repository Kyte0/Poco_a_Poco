class Review < ApplicationRecord
  belongs_to :booking
  validates :rating, presence: true

  after_create :create_first_review
  after_create :receive_first_review

  def create_first_review
    first_review_completed = self.booking.user.reviews.count
    if first_review_completed == 1
      puts "User REVIEW milestone being created"
      milestone = Milestone.find_by_name("leaving_review")
      UserMilestone.create!(milestone: milestone, user: self.booking.user)
    end
  end

  def receive_first_review
    puts "Review is being created"
      if self.booking.lesson.user.class_reviews.count == 1
        puts "User REVIEW milestone being created"
        milestone = Milestone.find_by_name("receive_first_review")
        UserMilestone.create!(milestone: milestone, user: self.booking.lesson.user)
      end
  end

end


  # def create_first_review
  #   puts "Review is being created"
  #   if self.booking.user.reviews.count == 1
  #     puts "User REVIEW milestone being created"
  #     milestone = Milestone.find_by_name("leaving_review")
  #     UserMilestone.create!(milestone: milestone, user: self.user)
  #   end
  # end

  # def receive_first_review
  #   puts "Review is being created"
  #     if self.booking.lesson.user.reviews.count == 1
  #       puts "User REVIEW milestone being created"
  #       milestone = Milestone.find_by_name("receive_first_review")
  #       UserMilestone.create!(milestone: milestone, user: self.user)
  #     end
  # end
