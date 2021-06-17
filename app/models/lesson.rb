class Lesson < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  # after_create :create_milestone_lesson
  # after_create :create_milestone_two_lessons
  # after_create :create_milestone_booking_lessons

  include PgSearch::Model
    pg_search_scope :global_search,
      against: [ :instrument, :location, :level ],
      associated_against: {
          user: [ :first_name, :last_name ],
        },
        using: {tsearch: { prefix: true }}

    pg_search_scope :kinda_matching,
      against: :text,
      using: {
        tsearch: {dictionary: "english"}
      }

  def average_rating
    num_ratings = self.bookings.select{|b| b.reviews.first }.map { |b| b.reviews.first }.size
    rating_total = self.bookings.select{|b| b.reviews.first }.map { |b| b.reviews.first }.map { |r| r.rating }.reduce(:+)
    if rating_total
      return rating_total / num_ratings
    end
  end

  private

  # def create_milestone_lesson
  #   lesson_created_one = self.user.lessons.count
  #   if lesson_created_one == 1
  #     puts "User LESSON milestone being created"
  #     milestone = Milestone.find_by_name("add_lesson")
  #     UserMilestone.create!(milestone: milestone, user: self.user)
  #   end
  # end

  # def create_milestone_two_lessons
  #   lesson_created_two = self.user.lessons.count
  #   if lesson_created_two == 2
  #     puts "User LESSON milestone being created"
  #     milestone = Milestone.find_by_name("two_lessons")
  #     UserMilestone.create!(milestone: milestone, user: self.user)
  #   end
  # end

  # def create_milestone_booking_lessons
  #   lesson_booking = self.bookings.count
  #   if lesson_booking == 2
  #     puts "User LESSON milestone being created"
  #     milestone = Milestone.find_by_name("receive_first_booking")
  #     UserMilestone.create!(milestone: milestone, user: self.user)
  #   end
  # end

end

# self.user.lessons.booking.count

  # def create_milestone_lesson
  #   puts "Lesson is being created"
  #   if self.user.lessons.count == 1
  #     puts "User LESSON milestone being created"
  #     milestone = Milestone.find_by_name("add_lesson")
  #     UserMilestone.create!(milestone: milestone, user: self.user)
  #   end
  # end

  # def create_milestone_two_lessons
  #   puts "Lesson is being created"
  #   if self.user.lessons.count == 2
  #     puts "User LESSON milestone being created"
  #     milestone = Milestone.find_by_name("add_lesson")
  #     UserMilestone.create!(milestone: milestone, user: self.user)
  #   end
  # end


