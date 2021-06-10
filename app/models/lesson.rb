class Lesson < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
    pg_search_scope :global_search,
      against: [ :instrument, :location, :level ],
      associated_against: {
          user: [ :first_name, :last_name, :bio ],
        },
        using: {tsearch: { prefix: true }}

    pg_search_scope :kinda_matching,
      against: :text,
      using: {
        tsearch: {dictionary: "english"}
      }

  def average_rating
    num_ratings = self.bookings.map { |b| b.review }.size
    rating_total = self.bookings.map { |b| b.review }.map { |r| r.rating }.reduce(:+)
    unless num_ratings.zero?
      "Rating: #{rating_total/num_ratings}"
    end
  end
end
