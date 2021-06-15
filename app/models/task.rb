class Task < ApplicationRecord
  belongs_to :booking

  #after_update :check_for_achievements

  #private

  # def check_for_achievements
    #if task.booking.tasks are complete then create achievement with Achievement
  #end

  after_create :create_milestone_task_three

  private

  def create_milestone_task_three
    puts "Task is being created"
    if self.booking.user.tasks.count == 3 && self.completed == true
      puts "User TASK milestone being created"
      milestone = Milestone.find_by_name("three_tasks")
      UserMilestone.create!(milestone: milestone, user: self.booking.user)
    end
  end
end
