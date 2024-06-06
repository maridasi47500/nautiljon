class CreateAnimesPhotobooks < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_photobooks do |t|
      t.string :name

      t.timestamps
    end
  end
end