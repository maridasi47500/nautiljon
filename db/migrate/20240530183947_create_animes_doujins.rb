class CreateAnimesDoujins < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_doujins do |t|
      t.string :name

      t.timestamps
    end
  end
end