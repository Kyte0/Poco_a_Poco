class AddCompletedToUserMilestones < ActiveRecord::Migration[6.0]
  def change
    add_column :user_milestones, :completed, :boolean, default: false
  end
end
