class CreateArtbooksActualites < ActiveRecord::Migration[7.1]
  def change
    create_table :artbooks_actualites do |t|
      t.string :name

      t.timestamps
    end
  end
end