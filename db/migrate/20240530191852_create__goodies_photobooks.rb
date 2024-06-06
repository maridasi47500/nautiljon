class CreateGoodiesPhotobooks < ActiveRecord::Migration[7.1]
  def change
    create_table :_goodies_photobooks do |t|
      t.string :name

      t.timestamps
    end
  end
end