class CreateMangasDramas < ActiveRecord::Migration[7.1]
  def change
    create_table :_mangas_dramas do |t|
      t.string :name

      t.timestamps
    end
  end
end