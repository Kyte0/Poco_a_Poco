class CreateAchievements < ActiveRecord::Migration[6.0]
  def change
    create_table :achievements do |t|
      t.string :name
      t.boolean :completed
      t.string :image

      t.timestamps
    end
  end
end
