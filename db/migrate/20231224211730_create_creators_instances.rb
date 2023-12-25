class CreateCreatorsInstances < ActiveRecord::Migration[7.0]
  def change
    create_table :creators_instances do |t|
      t.belongs_to :creator, null: false, foreign_key: true
      t.belongs_to :instance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
