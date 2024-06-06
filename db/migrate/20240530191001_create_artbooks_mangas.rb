class CreateArtbooksMangas < ActiveRecord::Migration[7.1]
  def change
    create_table :artbooks_mangas do |t|
      t.string :name

      t.timestamps
    end
  end
end