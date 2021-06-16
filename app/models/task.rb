class Task < ApplicationRecord
  belongs_to :booking

  #after_update :check_for_achievements

  #private

  # def check_for_achievements
    #if task.booking.tasks are complete then create achievement with Achievement
  #end

  after_update :create_milestone_task_three

  private

  def create_milestone_task_three
    num_completed_tasks = self.booking.tasks.count {|task| task.completed }
    if num_completed_tasks == 3
      puts "User TASK milestone being created"
      milestone = Milestone.find_by_name("three_tasks")
      UserMilestone.create!(milestone: milestone, user: self.booking.user)
    end
  end
end
