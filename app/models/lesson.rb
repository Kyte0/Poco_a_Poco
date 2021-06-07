class Lesson < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings

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
  end
