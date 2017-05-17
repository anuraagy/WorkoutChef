class CreatePrograms < ActiveRecord::Migration[5.0]
  def change
    create_table :programs do |t|
      t.string   :current_weight,   :array => true
      t.string   :current_bodyfat,  :array => true
      t.string   :program_type,     :null => false
      t.integer  :goal_weight,      :null => false
      t.string   :goals,            :array => true
      t.float    :goal_body_fat

      t.belongs_to  :user, :index => true
      t.datetime    :start_date, :null => false
      t.datetime    :end_date

      t.timestamps
    end
  end
end
