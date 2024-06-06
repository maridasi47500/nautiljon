class CreateJeuxVideosMangas < ActiveRecord::Migration[7.1]
  def change
    create_table :_jeux_videos_mangas do |t|
      t.string :name

      t.timestamps
    end
  end
end