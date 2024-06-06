class CreateDoujinshisMangaPlus < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujinshis_manga_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end