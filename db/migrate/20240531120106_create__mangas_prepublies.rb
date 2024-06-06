class CreateMangasPrepublies < ActiveRecord::Migration[7.1]
  def change
    create_table :_mangas_prepublies do |t|
      t.string :name

      t.timestamps
    end
  end
end