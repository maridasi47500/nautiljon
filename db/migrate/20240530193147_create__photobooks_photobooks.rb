class CreatePhotobooksPhotobooks < ActiveRecord::Migration[7.1]
  def change
    create_table :_photobooks_photobooks do |t|
      t.string :name

      t.timestamps
    end
  end
end