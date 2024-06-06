class CreateDramasAnimes < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_animes do |t|
      t.string :name

      t.timestamps
    end
  end
end