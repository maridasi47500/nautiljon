class CreateArtbooksAnimes < ActiveRecord::Migration[7.1]
  def change
    create_table :artbooks_animes do |t|
      t.string :name

      t.timestamps
    end
  end
end