class CreateJeuxVideosActualites < ActiveRecord::Migration[7.1]
  def change
    create_table :_jeux_videos_actualites do |t|
      t.string :name

      t.timestamps
    end
  end
end