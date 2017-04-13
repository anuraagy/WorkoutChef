class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name, :null => false
      t.string :description, :null => false
      t.string :muscles_worked, :array => true

      t.timestamps
    end
  end
end
