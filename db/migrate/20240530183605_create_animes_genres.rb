class CreateAnimesGenres < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_genres do |t|
      t.string :name

      t.timestamps
    end
  end
end