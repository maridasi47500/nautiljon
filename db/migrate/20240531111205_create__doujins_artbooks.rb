class CreateDoujinsArtbooks < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujins_artbooks do |t|
      t.string :name

      t.timestamps
    end
  end
end