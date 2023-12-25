class CreateCreators < ActiveRecord::Migration[7.0]
  def change
    create_table :creators do |t|
      t.string :username, limit: 75
      t.string :url

      t.timestamps
    end
    add_index :creators, :username, unique: true
  end
end
