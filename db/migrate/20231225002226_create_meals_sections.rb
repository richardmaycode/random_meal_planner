class CreateMealsSections < ActiveRecord::Migration[7.0]
  def change
    create_table :meals_sections do |t|
      t.belongs_to :meal, null: false, foreign_key: true
      t.belongs_to :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
