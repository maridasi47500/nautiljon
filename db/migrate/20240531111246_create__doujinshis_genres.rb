class CreateDoujinshisGenres < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujinshis_genres do |t|
      t.string :name

      t.timestamps
    end
  end
end