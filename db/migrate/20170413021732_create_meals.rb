class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.belongs_to :food_log, :index => true
      t.string :type, :null => false

      t.timestamps
    end
  end
end
