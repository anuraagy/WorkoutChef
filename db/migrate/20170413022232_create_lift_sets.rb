class CreateLiftSets < ActiveRecord::Migration[5.0]
  def change
    create_table :lift_sets do |t|
      t.belongs_to :workout
      t.integer :reps, :null => false
      t.string :exercise, :null => false
      t.timestamps
    end
  end
end
