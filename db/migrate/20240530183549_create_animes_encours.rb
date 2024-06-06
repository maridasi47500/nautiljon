class CreateAnimesEncours < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_encours do |t|
      t.string :name

      t.timestamps
    end
  end
end