class CreateDramasArtbooks < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_artbooks do |t|
      t.string :name

      t.timestamps
    end
  end
end