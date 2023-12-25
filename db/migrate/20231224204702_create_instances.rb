class CreateInstances < ActiveRecord::Migration[7.0]
  def change
    create_table :instances do |t|
      t.integer :number_of_segments, default: 1
      t.timestamps
    end
  end
end
