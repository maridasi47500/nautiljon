class CreateMangasArtbooks < ActiveRecord::Migration[7.1]
  def change
    create_table :_mangas_artbooks do |t|
      t.string :name

      t.timestamps
    end
  end
end