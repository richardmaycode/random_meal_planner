class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.boolean :skip, default: false

      t.belongs_to :instance, null: false, foreign_key: true
      t.timestamps
    end
  end
end
