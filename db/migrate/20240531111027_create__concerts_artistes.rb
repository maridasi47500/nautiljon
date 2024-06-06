class CreateConcertsArtistes < ActiveRecord::Migration[7.1]
  def change
    create_table :_concerts_artistes do |t|
      t.string :name

      t.timestamps
    end
  end
end