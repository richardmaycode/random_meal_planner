class CreateSources < ActiveRecord::Migration[7.0]
  def change
    create_table :sources do |t|
      t.string :username, limit: 75
      t.string :url

      t.timestamps
    end
    add_index :sources, :username, unique: true
  end
end
