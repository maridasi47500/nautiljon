class CreateBrevesArtbooks < ActiveRecord::Migration[7.1]
  def change
    create_table :_breves_artbooks do |t|
      t.string :name

      t.timestamps
    end
  end
end