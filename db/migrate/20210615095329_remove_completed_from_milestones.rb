class RemoveCompletedFromMilestones < ActiveRecord::Migration[6.0]
  def change
    remove_column :milestones, :completed, :boolean
  end
end
