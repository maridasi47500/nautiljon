class CreateDoujinshisArtbooks < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujinshis_artbooks do |t|
      t.string :name

      t.timestamps
    end
  end
end