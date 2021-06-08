class CreateMilestones < ActiveRecord::Migration[6.0]
  def change
    create_table :milestones do |t|
      t.string :name
      t.boolean :completed
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
