class CreateLightNovelsMangaPlus < ActiveRecord::Migration[7.1]
  def change
    create_table :_light_novels_manga_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end