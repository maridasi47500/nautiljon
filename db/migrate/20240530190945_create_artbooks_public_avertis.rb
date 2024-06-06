class CreateArtbooksPublicAvertis < ActiveRecord::Migration[7.1]
  def change
    create_table :artbooks_public_avertis do |t|
      t.string :name

      t.timestamps
    end
  end
end