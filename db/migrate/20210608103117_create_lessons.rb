class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :instrument
      t.float :price
      t.references :user, null: false, foreign_key: true
      t.string :level
      t.string :location

      t.timestamps
    end
  end
end
