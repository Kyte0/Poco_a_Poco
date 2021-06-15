class CreateUserMilestones < ActiveRecord::Migration[6.0]
  def change
    create_table :user_milestones do |t|
      t.references :user, null: false, foreign_key: true
      t.references :milestone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
