class CreateVideos < ActiveRecord::Migration[7.1]
  def change
    create_table :_videos do |t|
      t.string :titre
      t.integer :_videos_id_cat_id
      t.string :url
      t.string :tags

      t.timestamps
    end
  end
end