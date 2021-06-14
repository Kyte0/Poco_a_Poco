class DropAchievementIdFromTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :achievement_id
  end
end
