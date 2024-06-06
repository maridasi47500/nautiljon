class CreateArtbooksActualiteMinis < ActiveRecord::Migration[7.1]
  def change
    create_table :artbooks_actualite_minis do |t|
      t.string :name

      t.timestamps
    end
  end
end