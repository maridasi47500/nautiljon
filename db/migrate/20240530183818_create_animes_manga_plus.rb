class CreateAnimesMangaPlus < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_manga_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end