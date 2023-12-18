class CreateMealsRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :meals_recipes do |t|
      t.belongs_to :meal, null: false, foreign_key: true
      t.belongs_to :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
