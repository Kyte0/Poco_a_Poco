class RemoveUserIdFromMilestones < ActiveRecord::Migration[6.0]
  def change
    remove_reference :milestones, :user
  end
end
