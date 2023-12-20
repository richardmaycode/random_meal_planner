class CreateSegments < ActiveRecord::Migration[7.0]
  def change
    create_table :segments do |t|
      t.integer :index
      t.belongs_to :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
