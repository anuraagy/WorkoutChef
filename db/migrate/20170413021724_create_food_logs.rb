class CreateFoodLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :food_logs do |t|
      t.belongs_to :user, :index => true
      t.datetime :date, :null => false

      t.timestamps
    end
  end
end
