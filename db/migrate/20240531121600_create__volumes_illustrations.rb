class CreateVolumesIllustrations < ActiveRecord::Migration[7.1]
  def change
    create_table :_volumes_illustrations do |t|
      t.string :name

      t.timestamps
    end
  end
end