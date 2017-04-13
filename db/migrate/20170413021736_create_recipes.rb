class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.belongs_to :meal, :index => true

      t.string :name, :null => false
      t.string :description, :null => false
      t.string :attribution
      t.string :steps, :array => true

      t.integer :calories, :null => false
      t.integer :fat, :null => false
      t.integer :saturated_fat
      t.integer :trans_fat
      t.integer :cholesterol
      t.integer :sodium
      t.integer :carbohydrates, :null => false
      t.integer :sugars
      t.integer :dietary_fiber
      t.integer :protein, :null => false

      t.integer :vitamin_a
      t.integer :vitamin_c
      t.integer :calcium
      t.integer :iron

      t.timestamps
    end
  end
end
