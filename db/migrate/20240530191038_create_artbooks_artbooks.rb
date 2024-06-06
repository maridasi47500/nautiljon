class CreateArtbooksArtbooks < ActiveRecord::Migration[7.1]
  def change
    create_table :artbooks_artbooks do |t|
      t.string :name

      t.timestamps
    end
  end
end