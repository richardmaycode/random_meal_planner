class CreateSources < ActiveRecord::Migration[7.0]
  def change
    create_table :sources do |t|
      t.string :name, limit: 75

      t.belongs_to :creator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
