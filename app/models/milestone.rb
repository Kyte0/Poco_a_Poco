class Milestone < ApplicationRecord
  has_many :user_milestones
  has_many :users, through: :user_milestones
end
