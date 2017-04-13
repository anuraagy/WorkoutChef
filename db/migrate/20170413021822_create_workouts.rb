class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.belongs_to :exercise_log, :index => true
      t.string :name, :null => false
      t.string :description, :null => false
      
      t.timestamps
    end
  end
end
