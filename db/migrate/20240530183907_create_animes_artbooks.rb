class CreateAnimesArtbooks < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_artbooks do |t|
      t.string :name

      t.timestamps
    end
  end
end