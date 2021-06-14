class Task < ApplicationRecord
  belongs_to :booking

  #after_update :check_for_achievements

  #private

  # def check_for_achievements
    #if task.booking.tasks are complete then create achievement with Achievement
  #end
end
