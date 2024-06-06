class CreateAnimesCultures < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_cultures do |t|
      t.string :name

      t.timestamps
    end
  end
end