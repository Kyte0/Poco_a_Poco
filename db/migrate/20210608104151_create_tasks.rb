class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :content
      t.boolean :completed
      t.string :type
      t.references :booking, null: false, foreign_key: true
      t.references :achievement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
