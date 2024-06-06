class CreateVideosIdCats < ActiveRecord::Migration[7.1]
  def change
    create_table :_videos_id_cats do |t|
      t.string :name

      t.timestamps
    end
  end
end